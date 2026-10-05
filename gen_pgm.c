/*
 * gen_pgm.c - Generador de imagenes de prueba en formato PGM binario (P5).
 * Elaboracion propia (Practica 2 IC 2026-27).
 *
 * Crea una imagen sintetica en escala de grises (fondo en degradado, circulos y
 * rectangulos de distintas intensidades y ruido) para disponer de un caso de
 * prueba reproducible de cualquier tamano sin depender de herramientas externas.
 *
 * Uso: ./gen_pgm ancho alto semilla salida.pgm
 */
#include <stdio.h>
#include <stdlib.h>

static unsigned long long estado;

/* Generador congruencial lineal: misma semilla -> misma imagen. */
static unsigned int aleatorio(void)
{
   estado = estado * 6364136223846793005ULL + 1442695040888963407ULL;
   return (unsigned int)(estado >> 33);
}

static int entre(int min, int max)
{
   return min + (int)(aleatorio() % (unsigned int)(max - min + 1));
}

int main(int argc, char *argv[])
{
   int cols, rows, r, c, i, nfiguras;
   unsigned char *img;
   FILE *fp;

   if(argc != 5){
      fprintf(stderr, "Uso: %s ancho alto semilla salida.pgm\n", argv[0]);
      return 1;
   }
   cols = atoi(argv[1]);
   rows = atoi(argv[2]);
   estado = strtoull(argv[3], NULL, 10);
   if(cols < 16 || rows < 16){
      fprintf(stderr, "El ancho y el alto deben ser al menos 16.\n");
      return 1;
   }

   if((img = (unsigned char *) malloc((size_t)rows * cols)) == NULL){
      fprintf(stderr, "No hay memoria para la imagen.\n");
      return 1;
   }

   /* Fondo: degradado diagonal suave. */
   for(r = 0; r < rows; r++)
      for(c = 0; c < cols; c++)
         img[(size_t)r * cols + c] =
            (unsigned char)(40 + 120.0 * ((double)r / rows + (double)c / cols) / 2.0);

   /* Figuras: aproximadamente una por cada 200x200 pixeles. */
   nfiguras = (int)(((long long)rows * cols) / (200 * 200)) + 1;
   for(i = 0; i < nfiguras; i++){
      int cx = entre(0, cols - 1), cy = entre(0, rows - 1);
      int rad = entre(10, 150);
      unsigned char gris = (unsigned char) entre(0, 255);
      int r0 = cy - rad < 0 ? 0 : cy - rad, r1 = cy + rad >= rows ? rows - 1 : cy + rad;
      int c0 = cx - rad < 0 ? 0 : cx - rad, c1 = cx + rad >= cols ? cols - 1 : cx + rad;
      int circulo = aleatorio() & 1;

      for(r = r0; r <= r1; r++)
         for(c = c0; c <= c1; c++)
            if(!circulo || (r - cy) * (r - cy) + (c - cx) * (c - cx) <= rad * rad)
               img[(size_t)r * cols + c] = gris;
   }

   /* Ruido uniforme de +-12 niveles. */
   for(r = 0; r < rows; r++)
      for(c = 0; c < cols; c++){
         int v = img[(size_t)r * cols + c] + entre(-12, 12);
         img[(size_t)r * cols + c] = (unsigned char)(v < 0 ? 0 : v > 255 ? 255 : v);
      }

   if((fp = fopen(argv[4], "wb")) == NULL){
      fprintf(stderr, "No se puede crear %s.\n", argv[4]);
      return 1;
   }
   fprintf(fp, "P5\n%d %d\n255\n", cols, rows);
   fwrite(img, 1, (size_t)rows * cols, fp);
   fclose(fp);
   free(img);
   return 0;
}
