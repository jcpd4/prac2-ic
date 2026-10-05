#!/bin/bash
# bench.sh - Mediciones de la Practica 2 (Canny secuencial).
#
#   ./bench.sh            ejecuta todas las mediciones (tarda unos 20-30 minutos)
#   REPS=3 ./bench.sh     cambia el numero de repeticiones (por defecto 5)
#
# Compila y ejecuta en $WORK (disco Linux, no /mnt/c) para que la E/S no
# introduzca ruido. Los resultados (CSV, uno por fila y ejecucion) se guardan
# en ./resultados. Cada fila contiene los tiempos por fase que imprime canny.

set -e
SRC="$(cd "$(dirname "$0")" && pwd)"
WORK="${WORK:-/tmp/canny_bench}"
OUT="$SRC/resultados"
REPS="${REPS:-5}"
CPU="${CPU:-2}"                 # nucleo fijo para todas las ejecuciones
REF_SIZE=12000; REF_SIGMA=3.0

mkdir -p "$WORK" "$OUT"
cp "$SRC/canny.c" "$SRC/gen_pgm.c" "$WORK/"
cd "$WORK"
ulimit -s unlimited
gcc -O2 -Wall gen_pgm.c -o gen_pgm

CABECERA="experimento,config,size,sigma,rep,blur_x,blur_y,gauss_total,deriv_x,deriv_y,deriv_total,nms_total,hyst_init,hyst_hist,hyst_follow,hyst_clean,hyst_total,canny,programa"

# Convierte la salida de canny en una linea CSV con los tiempos por fase.
parsea() {
   awk '
   /Gaussian_Smooth/ {s="g"} /Derivate_x_y/ {s="d"} /Non_Max_Supp/ {s="n"} /Appy_Hysteresis/ {s="h"}
   /Tiempo primer bloque/  {v[s"1"]=$(NF-1)}
   /Tiempo segundo bloque/ {v[s"2"]=$(NF-1)}
   /Tiempo tercer bloque/  {v[s"3"]=$(NF-1)}
   /Tiempo cuarto bloque/  {v[s"4"]=$(NF-1)}
   /Tiempo total funcion/  {v[s"T"]=$(NF-1)}
   /Tiempo canny\(\)/      {c=$(NF-1)}
   /Tiempo total del programa/ {p=$(NF-1)}
   END {printf "%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s\n", v["g1"],v["g2"],v["gT"],v["d1"],v["d2"],v["dT"],v["nT"],v["h1"],v["h2"],v["h3"],v["h4"],v["hT"],c,p}'
}

imagen() {   # imagen <size>
   [ -f "img_$1.pgm" ] || ./gen_pgm "$1" "$1" 42 "img_$1.pgm"
}

ejecuta() {  # ejecuta <experimento> <config> <binario> <size> <sigma>
   imagen "$4"
   for rep in $(seq 1 "$REPS"); do
      linea=$(taskset -c "$CPU" "./$3" "img_$4.pgm" "$5" 0.3 0.8 | parsea)
      echo "$1,$2,$4,$5,$rep,$linea" | tee -a "$CSV"
   done
}

# ---------------------------------------------------------------- entorno
{
   echo "Fecha: $(date -Iseconds)"
   echo "Kernel: $(uname -srm)"
   lscpu | grep -E "Model name|^CPU\(s\)|Thread|Core|Socket|L1d|L1i|L2|L3|Flags" | sed 's/  */ /g' | cut -c1-200
   free -h | head -2
   gcc --version | head -1
} > "$OUT/entorno.txt"

# ---------------------------------------------------------------- 1) tamano
CSV="$OUT/escalado.csv"; echo "$CABECERA" > "$CSV"
gcc -O2 canny.c -o canny_O2 -lm
for s in 2000 4000 6000 8000 10000 12000; do ejecuta tamano O2 canny_O2 $s $REF_SIGMA; done
for sg in 0.5 1 2 3 4 6 8; do ejecuta sigma O2 canny_O2 8000 $sg; done

# ---------------------------------------------------------------- 2) compilacion
CSV="$OUT/compilacion.csv"; echo "$CABECERA" > "$CSV"
declare -a NOMBRES=(O0 O1 O2 O2_novec O3 O3_unroll O3_native O3_native_nofma O3_native_lto Ofast_native O2_blurfilas O3_native_blurfilas)
declare -a FLAGS=("-O0" "-O1" "-O2" "-O2 -fno-tree-vectorize" "-O3" "-O3 -funroll-loops" "-O3 -march=native" \
                  "-O3 -march=native -ffp-contract=off" \
                  "-O3 -march=native -flto" "-Ofast -march=native" "-O2 -DBLUR_Y_FILAS" "-O3 -march=native -DBLUR_Y_FILAS")
: > "$OUT/comandos.txt"
for i in "${!NOMBRES[@]}"; do
   cmd="gcc ${FLAGS[$i]} canny.c -o canny_${NOMBRES[$i]} -lm"
   echo "${NOMBRES[$i]}: $cmd" >> "$OUT/comandos.txt"
   $cmd
done
for i in "${!NOMBRES[@]}"; do
   ejecuta compilacion "${NOMBRES[$i]}" "canny_${NOMBRES[$i]}" $REF_SIZE $REF_SIGMA
   cp imagen_serial.pgm "salida_${NOMBRES[$i]}.pgm"
done

# ---------------------------------------------------------------- 3) resultados iguales?
{
   for n in "${NOMBRES[@]}"; do
      if cmp -s salida_O2.pgm "salida_$n.pgm"; then echo "$n: identica a O2"
      else echo "$n: DISTINTA de O2 ($(cmp -l salida_O2.pgm "salida_$n.pgm" | wc -l) bytes)"; fi
   done
} > "$OUT/verificacion.txt"
cat "$OUT/verificacion.txt"

# ---------------------------------------------------------------- 4) vectorizacion
gcc -O3 -march=native -fopt-info-vec-optimized canny.c -o /dev/null -lm 2> "$OUT/vec_O3_native.txt" || true
gcc -O2 -fopt-info-vec-optimized canny.c -o /dev/null -lm 2> "$OUT/vec_O2.txt" || true
gcc -O3 -march=native -fopt-info-vec-missed canny.c -o /dev/null -lm 2> "$OUT/vec_O3_native_missed.txt" || true
gcc -O3 -march=native -S -fverbose-asm canny.c -o "$OUT/canny_O3_native.s"

# ---------------------------------------------------------------- 5) perfil (gprof)
gcc -O2 -pg canny.c -o canny_pg -lm
taskset -c "$CPU" ./canny_pg img_$REF_SIZE.pgm $REF_SIGMA 0.3 0.8 > /dev/null
gprof -b -p canny_pg gmon.out > "$OUT/gprof.txt"

echo "Mediciones terminadas. Resultados en $OUT"
