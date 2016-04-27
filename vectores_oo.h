#include <math.h>

class TVector {
 private:
  float X;
  float Y;
  
 public:
  TVector() {
    X = 0;
    Y = 0;
  }
  TVector(float x, float y) {
    X = x;
    Y = y;
  }
  
  //  ~TVector();

  
  TVector MagnitudAngulo( float m, float a) {
    X = m * cos(a);
    Y = m * sin(a);
  }

 
  // Vector por un escalar
  TVector x_escalar(float escalar) {
    return TVector( X * escalar, Y * escalar);
  }

  
  // Suma de Vectores
  TVector Sumar(TVector);

  // Producto escalar o punto
  float ProductoPunto(TVector);

  // Módulo del Producto cruz
  float Modulo_ProductoCruz(TVector);
 
  char* ComoCadena() {
    printf("(%2.2fx, %2.2fy)\n", X, Y);
  }
  

};




/* TVector VectorCrear_MagnitudAngulo( float m, float a) { */
/*   return VectorCrear( m * cos(a), m * sin(a) ); */
/* } */



// Suma de Vectores
TVector TVector::Sumar(TVector b) {
  return TVector( X + b.X, Y + b.Y );
}


// Producto escalar o punto
float TVector::ProductoPunto(TVector b) {
   return (X * b.X) + (Y * b.Y);
}

// Módulo del Producto cruz
float TVector::Modulo_ProductoCruz(TVector b) {
  return sqrt(pow( (X * b.Y)-(Y*b.X), 2));
}


