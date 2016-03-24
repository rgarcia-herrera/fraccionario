REM ===============================================
REM Programa que opera Vectores
REM ===============================================
40 CLS
PRINT "Programa que opera Vectores"
PRINT
INPUT "vector U, componente x"; U_X
INPUT "vector U, componente y"; U_Y
PRINT
INPUT "vector V, magnitud"; V_magnitud
INPUT "vector V, ángulo"; V_angulo
PRINT
INPUT "escalar"; E
PRINT
PRINT
PRINT

REM Este método es el precursor del paso de argumentos a una subrutina
NX = U_X : NY = U_Y
PRINT "Verctor U" 
GOSUB 520

REM convertir de representación polar a por-componentes
NM = V_magnitud : NA = V_angulo : GOSUB 600
V_X = NX : V_Y = NY
PRINT "Vector V"
GOSUB 520

REM vector U por escalar E
NX = U_X : NY = U_Y : NE = E : GOSUB 450
PRINT "Vector U por escalar E"
GOSUB 520

REM vector U por escalar E
NX = V_X : NY = V_Y : NE = E : GOSUB 450
PRINT "Vector V por escalar E"
GOSUB 520

270 INPUT "Desea continuar (S/N)"; C$
280 IF C$ = "S" OR C$ = "s" THEN GOTO 40
290 END




450 REM =========================================
460 REM Vector por un número
470 REM =========================================
vX = NX : vY = NY : nE = NE
NX = vX * nE
NY = vY * nE
RETURN





520 REM =========================================
530 REM Impresion de Vectores por Componentes
540 REM =========================================
550 X = NX : Y = NY
560 PRINT "("; X; "x, "; Y; "y)"
570 RETURN




600 REM ========================================================
610 REM Conversión de representación polar a por-componentes 
620 REM ========================================================
M=NM : A = NA
NX = M * cos( A )
NY = M * sin( A )
RETURN
