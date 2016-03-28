#include <stdio.h>
#include <math.h>

typedef struct _TVector_ {
  float X;
  float Y;
} TVector;

//Prototipos de las funciones
TVector VectorCrear(float, float);
TVector VectorCrear_MagnitudAngulo(float, float);
TVector Vector_x_escalar(TVector, float);
TVector VectorSumar(TVector, TVector);
float VectorProductoPunto(TVector, TVector);
float VectorModulo_ProductoCruz(TVector, TVector);
void VectorComoCadena(TVector);

int main() {
  TVector U, V;
  float E, x, y, m, a;
  
  printf("Vector U componente X: ");
  scanf("%f", &x);
  printf("Vector U componente Y: ");
  scanf("%f", &y);
  U = VectorCrear(x, y);
  printf("Vector V magnitud: ");
  scanf("%f", &m);
  printf("Vector V angulo: ");
  scanf("%f", &a);
  V = VectorCrear_MagnitudAngulo(m, a);
  printf("Escalar E: ");
  scanf("%f", &E);

  
  printf("\n\n\nVector U=");  
  VectorComoCadena(U);
  printf("Vector V=");    
  VectorComoCadena(V);
  printf("E=%2.2f\n\n\n", E);
  
  printf("Vector U x E=");      
  VectorComoCadena(Vector_x_escalar(U, E));
  printf("Vector V x E=");        
  VectorComoCadena(Vector_x_escalar(V, E));
  printf("U+V=");          
  VectorComoCadena(VectorSumar(U,V));
  printf("U.V=%2.2f\n", VectorProductoPunto(U, V));
  printf("|UxV|=%2.2f\n", VectorModulo_ProductoCruz(U, V));  
  
  return 0;
}

TVector VectorCrear(float X, float Y) {
  TVector temp;
  temp.X = X;
  temp.Y = Y;
  return temp;
}

TVector VectorCrear_MagnitudAngulo( float m, float a) {
  return VectorCrear( m * cos(a), m * sin(a) );
}


// Vector por un escalar
TVector Vector_x_escalar(TVector vector, float escalar) {
   return VectorCrear( vector.X * escalar, vector.Y * escalar);
}

// Suma de Vectores
TVector VectorSumar(TVector a, TVector b) {
  return VectorCrear( a.X + b.X, a.Y + b.Y );
}


// Producto escalar o punto
float VectorProductoPunto(TVector a, TVector b) {
   return (a.X * b.X) + (a.Y * b.Y);
}

// Módulo del Producto cruz
float VectorModulo_ProductoCruz(TVector a, TVector b) {
  return sqrt(pow( (a.X * b.Y)-(a.Y*b.X), 2));
}


void VectorComoCadena( TVector v) {
  printf("(%2.2fx, %2.2fy)\n", v.X, v.Y);
}
