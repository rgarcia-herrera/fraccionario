10 REM ===============================================
20 REM Programa que opera Vectores
30 REM ===============================================
40 CLS
50 PRINT "Programa que opera Vectores"
60 PRINT
70 INPUT "vector U, componente x"; U_X
80 INPUT "vector U, componente y"; U_Y
90 PRINT
100 INPUT "vector V, magnitud"; V_magnitud
110 INPUT "vector V, ángulo"; V_angulo
120 PRINT
130 INPUT "escalar"; E
140 PRINT
150 PRINT
160 PRINT


170 REM Este método es el precursor del paso de argumentos a una subrutina
180 NX = U_X : NY = U_Y
190 PRINT "Vector U" 
200 GOSUB 666
210 PRINT

220 REM convertir de representación polar a por-componentes
230 NM = V_magnitud : NA = V_angulo : GOSUB 888
240 V_X = NX : V_Y = NY
250 PRINT "Vector V"
260 GOSUB 666
270 PRINT

280 REM vector U por escalar E
290 NX = U_X : NY = U_Y : NE = E : GOSUB 777
300 PRINT "Vector U por escalar E"
310 GOSUB 666
320 PRINT
330 REM vector U por escalar E
340 NX = V_X : NY = V_Y : NE = E : GOSUB 777
350 PRINT "Vector V por escalar E"
360 GOSUB 666
370 PRINT


380 REM Producto Punto
390 MX = U_X : MY = U_Y
400 NX = V_X : NY = V_Y
410 GOSUB 1111
420 PRINT "Producto punto U·V="; E
430 PRINT


440 REM Suma de vectores
450 MX = U_X : MY = U_Y
460 NX = V_X : NY = V_Y
470 PRINT "Suma de vectores U+V"
480 GOSUB 999
490 PRINT



500 REM Producto cruz
510 MX = U_X : MY = U_Y
520 NX = V_X : NY = V_Y
530 GOSUB 2222
540 PRINT "modulo de producto cruz |UxV|="; E
550 PRINT



560 INPUT "Desea continuar (S/N)"; C$
570 IF C$ = "S" OR C$ = "s" THEN GOTO 40
580 END




666 REM =========================================
676 REM Impresion de Vectores por Componentes
686 REM =========================================
696 X = NX : Y = NY
706 PRINT "("; X; "x, "; Y; "y)"
716 RETURN




777 REM =========================================
787 REM Vector por un escalar
797 REM =========================================
807 vX = NX : vY = NY : nE = NE
817 NX = vX * nE
827 NY = vY * nE
837 RETURN




888 REM ========================================================
898 REM Conversión de representación polar a por-componentes 
908 REM ========================================================
918 M=NM : A = NA
928 NX = M * cos( A )
938 NY = M * sin( A )
948 RETURN




999 REM ====================
1009 REM Suma de vectores 
1019 REM ====================
1029 A_X = NX : A_Y = NY
1039 B_X = MX : B_Y = MY
1049 X = A_X + B_X
1059 Y = A_Y + B_Y
1069 NX = X : NY = Y
1079 GOSUB 666
1089 RETURN




1111 REM ==================
1121 REM  Producto punto 
1131 REM ==================
1141 A_X = NX : A_Y = NY
1151 B_X = MX : B_Y = MY
1161 E = (A_X * B_X) + (A_Y * B_Y)
1171 RETURN



2222 REM =================
2232 REM Producto cruz 
2242 REM =================
2252 A_X = NX : A_Y = NY
2262 B_X = MX : B_Y = MY
2272 E = SQR( ((A_X*b_Y)-(A_Y*B_X))^2 )
2282 RETURN
