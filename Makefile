# Practica 2 IC 2026-27 - Detector de bordes de Canny (version secuencial)
#
#   make        compila canny y el generador de imagenes
#   make run    ejecuta el caso de prueba de referencia
#   make clean  borra ejecutables y ficheros generados
#
# Otras opciones de compilacion:  make clean && make CFLAGS="-O3 -march=native"
# Otro tamano de imagen:           make run SIZE=4000

CC     = gcc
CFLAGS ?= -O2 -Wall
LDLIBS = -lm

# Caso de prueba de referencia
SIZE  ?= 12000
SEED  ?= 42
SIGMA ?= 3.0
TLOW  ?= 0.3
THIGH ?= 0.8
IMG    = imagen_$(SIZE).pgm

all: canny gen_pgm

canny: canny.c
	$(CC) $(CFLAGS) canny.c -o canny $(LDLIBS)

gen_pgm: gen_pgm.c
	$(CC) -O2 -Wall gen_pgm.c -o gen_pgm

$(IMG): gen_pgm
	./gen_pgm $(SIZE) $(SIZE) $(SEED) $(IMG)

# La pila se amplia porque follow_edges() es recursiva.
run: canny $(IMG)
	ulimit -s unlimited; ./canny $(IMG) $(SIGMA) $(TLOW) $(THIGH)

clean:
	rm -f canny gen_pgm imagen_*.pgm *.fim *.s gmon.out

.PHONY: all run clean
