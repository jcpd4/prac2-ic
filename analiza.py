#!/usr/bin/env python3
"""analiza.py - Resume las mediciones de bench.sh (mediana de las repeticiones).

Uso: python3 analiza.py   (lee resultados/escalado.csv y resultados/compilacion.csv)
Escribe resultados/resumen_escalado.csv y resultados/resumen_compilacion.csv.
"""
import csv
import os
import statistics
from collections import OrderedDict

DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "resultados")
CLAVE = ("experimento", "config", "size", "sigma")


def resume(nombre):
    with open(os.path.join(DIR, nombre + ".csv"), newline="") as f:
        filas = list(csv.DictReader(f))
    tiempos = [c for c in filas[0] if c not in CLAVE + ("rep",)]
    grupos = OrderedDict()
    for fila in filas:
        grupos.setdefault(tuple(fila[c] for c in CLAVE), []).append(fila)
    resumen = []
    for clave, grupo in grupos.items():
        r = dict(zip(CLAVE, clave))
        r["reps"] = len(grupo)
        for c in tiempos:
            r[c] = round(statistics.median(float(g[c]) for g in grupo), 4)
        canny = [float(g["canny"]) for g in grupo]
        r["canny_min"], r["canny_max"] = min(canny), max(canny)
        resumen.append(r)
    with open(os.path.join(DIR, "resumen_" + nombre + ".csv"), "w", newline="") as f:
        w = csv.DictWriter(f, fieldnames=list(resumen[0]))
        w.writeheader()
        w.writerows(resumen)
    return resumen


def main():
    esc = resume("escalado")
    print("== Escalado (mediana, s)")
    for r in esc:
        mpx = int(r["size"]) ** 2 / 1e6
        print(f"{r['experimento']:7} size={r['size']:>5} sigma={r['sigma']:>3}  "
              f"canny={r['canny']:7.3f}  ns/px={r['canny'] / mpx * 1e3:6.1f}  "
              f"blur_x={r['blur_x']:.3f} blur_y={r['blur_y']:.3f} deriv={r['deriv_total']:.3f} "
              f"nms={r['nms_total']:.3f} hyst={r['hyst_total']:.3f} follow={r['hyst_follow']:.3f}")

    comp = resume("compilacion")
    ref = next(r for r in comp if r["config"] == "O2")
    print("\n== Compilacion (mediana, s; ganancia frente a -O2)")
    for r in comp:
        print(f"{r['config']:22} canny={r['canny']:7.3f} [{r['canny_min']:.3f}-{r['canny_max']:.3f}]  "
              f"S={ref['canny'] / r['canny']:5.2f}  blur_x={r['blur_x']:.3f} blur_y={r['blur_y']:.3f} "
              f"deriv={r['deriv_total']:.3f} nms={r['nms_total']:.3f} hyst={r['hyst_total']:.3f}")


if __name__ == "__main__":
    main()
