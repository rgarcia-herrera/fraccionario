const X = 1
const Y = 2
REM ===============================================
REM Programa que opera Vectores
REM ===============================================
CLS
DIM U(2)
DIM V(2)
DIM A(2)
DIM B(2)
DIM VECTOR(2)
REPEAT
  PRINT "Programa que opera vectores"
  PRINT
  INPUT "Vector U, componente x"; UX
  INPUT "Vector U, componente y"; UY
  U = VectorCrear(UX, UY)
  PRINT
  INPUT "Vector V, magnitud"; magnitud
  INPUT "Vector V, angulo"; angulo
  V = VectorCrearPolar(magnitud, angulo)
  PRINT
  INPUT "Escalar"; E
  PRINT

  PRINT "Vector U"
  VectorImprimir U

  PRINT "Vector V"
  VectorImprimir V

  PRINT "Escalar E"
  PRINT E

  PRINT "suma de vectores U+V"
  A = VectorSumar(U, V)  
  VectorImprimir A
 
  PRINT "vector por escalar U*E"
  A = VectorPorEscalar(U, E)
  VectorImprimir A

  PRINT "vector por escalar V*E"
  A = VectorPorEscalar(V, E)
  VectorImprimir A

  PRINT "producto punto U.V"
  E = ProductoPunto(U, V)
  PRINT E

  PRINT "modulo de producto cruz |UxV|"
  E = ModuloDeProductoCruz(U, V)
  PRINT E
  PRINT
  PRINT
  
  INPUT "Desea continuar (S/N)"; C$
UNTIL C$ <> "S" AND C$ <> "s"
END

REM =========================================
REM Crear Vectores por componentes
REM =========================================
FUNC VectorCrear(XX, YY)
  DIM vtmp(2)
  vtmp(X) = XX
  vtmp(Y) = YY
  VectorCrear = vtmp
END FUNC


REM =========================================
REM Crear Vectores Polar
REM =========================================
FUNC VectorCrearPolar(M, ANG)
  VectorCrearPolar = VectorCrear(M * COS(ANG), M * SIN(ANG))
END FUNC



REM =========================================
REM Suma de Vectores
REM =========================================
FUNC VectorSumar(A, B)
  VectorSumar = VectorCrear(A(X)+B(X), A(Y)+B(Y))
END FUNC

REM ===========================
REM Vector por un escalar
REM ===========================
FUNC VectorPorEscalar(VECTOR, E)
    VectorPorEscalar = VectorCrear( VECTOR(X)*E, VECTOR(Y) * E )
END FUNC

REM ======================================================
REM Producto escalar, producto punto
REM ======================================================
FUNC ProductoPunto(A, B)
    ProductoPunto = (A(X) * B(X)) + (A(Y) * B(Y))
END FUNC

REM ======================================================
REM Módulo del producto cruz
REM ======================================================
FUNC ModuloDeProductoCruz(A, B)
    ModuloDeProductoCruz = SQR(((A(X)*B(Y))-(A(Y)*B(X)))^2)
END FUNC


REM =========================================
REM Impresion de Vector
REM =========================================
SUB VectorImprimir(VECTOR)
  PRINT "("; VECTOR(X); "x, "; VECTOR(Y); "y)"
END SUB

