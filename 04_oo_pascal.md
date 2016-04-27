# Implementación Orientada a Objetos en Pascal

Free Pascal tiene soporte para sintaxis orientada a objetos. Los tipos
de datos de la sección anterior se convierten en clases, lo que
simplifica la definición de las funciones a través de la
autorreferencia con el identificador "self", y permite omitir un
argumento.

Además se muestra la técnica para crear una "Unit" que es la forma en
que Pascal crea y usa sus bibliotecas.

El código fuente está dividido en dos archivos:
[vectores_oo.pas](https://github.com/rgarcia-herrera/vectores/blob/master/vectores_oo.pas)
y
[uvectores_oo.pas](https://github.com/rgarcia-herrera/vectores/blob/master/uvectores_oo.pas).
   
Compila en [Free Pascal](http://freepascal.org), con el siguiente
comando:


    $ fpc -Mobjfpc vectores_oo.pas


