#include <stdio.h>
#include "vectores_oo.h"

int main() {
  float x, y, m, a, E;

  printf("Vector U componente X: ");
  scanf("%f", &x);
  printf("Vector U componente Y: ");
  scanf("%f", &y);
  TVector U = TVector(x, y);
  
  printf("Vector V magnitud: ");
  scanf("%f", &m);
  printf("Vector V angulo: ");
  scanf("%f", &a);

  TVector V = TVector();
  V.MagnitudAngulo(m, a);


  printf("Escalar E: ");
  scanf("%f", &E);

  
  printf("\n\n\nVector U=");  
  U.ComoCadena();
  printf("Vector V=");    
  V.ComoCadena();
  printf("E=%2.2f\n\n\n", E);
  
  printf("Vector U x E=");      
  U.x_escalar(E).ComoCadena();
  printf("Vector V x E=");        
  V.x_escalar(E).ComoCadena();
  printf("U+V=");          
  U.Sumar(V).ComoCadena();
  printf("U.V=%2.2f\n", V.ProductoPunto(U));
  printf("|UxV|=%2.2f\n", V.Modulo_ProductoCruz(U));  
  
  return 0;
}
