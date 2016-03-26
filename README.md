# Operaciones con Vectores

## Reflexión didáctica acerca de algunos conceptos de Programación Orientada a Objetos.

El ejercicio consiste de la recapitulación de algunas técnicas y
mejores prácticas de programación. El programa bajo estudio hace
operaciones con vectores, las diferentes implementaciones permiten
contrastar la forma en que diferentes lenguajes y usos de lenguajes
dan lugar a formas de expresar la solución a un problema.

Se provee también un [PDF](oo_recap.pdf) generado con
[pandoc](http://pandoc.org) a partir de este archivo.


## Operaciones de vectores

Las explicaciones de las operaciones están en [otros
lados](https://es.wikipedia.org/wiki/Vector), el tema es cómo
convertirlas en software.

No implementamos todas las operaciones, unas cuántas nomás de ejemplo.
Para tenerlas claras a continuación las escribimos en Python que es
bastante legible para cualquiera.

### Representación polar, como magnitud y ángulo a componentes

Llegada la hora de escribir el programa en Python seguramente habrá
una clase Vector, tendrá un constructor polimórfico que reciba como
argumentos componentes x, y o una magnitud y un ángulo.

    v = vector(magnitud=10, angulo=0)
    u = polar_a_componentes( v )
    
    def polar_a_componentes( v ):
        return vector(x = v.magnitud * cos( v.angulo ),
                      y = v.magnitud * sin( v.angulo ) )


### Vector por un número

Acá se muestra el constructor por componentes.

    a = vector(x=3, y=4)
    n = 3
    
    def vector_x_num( vector, num ):
        return vector( vector.x * num, vector.y * num )


### Suma de Vectores

    vector_suma( a, b ):
        return vector( a.x + b.x,
                       a.y + b.y )



### Producto escalar, producto punto

    a = vector(x=3, y=4)
    b = vector(x=3, y=4)
    
    def producto_escalar( a, b ):
        return (a.x * b.x) + (a.y * b.y)


### Módulo del Producto cruz

    a = vector(x=3, y=4)
    b = vector(x=5, y=6)
    
    def modulo_producto_cruz( a, b ):
        return sqrt(((a.x*.y)-(a.y*b.x))**2)



# Código spaghetti

Así llamado por que seguir el hilo de ejecución es parecido a seguir
una hebra de pasta en un plato de espaghetti: entra por acá, sale por
allá, regresa más arriba, etc.

En Basic esta es la forma natural de programar, usando la expresión
GOTO para controlar el flujo de un programa.

El [código fuente](https://github.com/rgarcia-herrera/vectores/blob/master/spaghetti.bas)
está en el repositorio original.


# Programación Procedural

Este ejemplo está escrito en SmallBasic. Basic evolucionó: ahora ya no
es necesario numerar las líneas de código y hay sintaxis que sirve
para denotar subrutinas de manera explícita, con genuinos argumentos y
nada de variables transitorias.

El [código fuente](https://github.com/rgarcia-herrera/vectores/blob/master/procedural.bas)
está en el repositorio original.



# Tipos de datos

Además de subrutinas y funciones esta versión muestra el
soporte de Pascal para tipos de datos.

Para el programador mejora la legibilidad y facilita la depuración,
para el compilador la información de tipos de datos permite optimizar
la creación de código de máquina.

Además de tipos de dato nativos, como "integer", "real" y "string",
Pascal permite la creación de tipos de dato especializados a través
del tipo "record".

Los datos tipo "record" se construyen a partir de los tipos nativos
del lenguaje pero permiten al programador expresar relaciones
nombradas y fácilmente asequibles entre datos más elementales.

Este [código fuente](https://github.com/rgarcia-herrera/vectores/blob/master/tipos_de_datos.pas)
compila en [Free Pascal](http://freepascal.org), con el siguiente
comando:

    $ fpc tipos_de_datos.pas
    Free Pascal Compiler version 2.6.4+dfsg-4 [2014/10/14] for x86_64
    Copyright (c) 1993-2014 by Florian Klaempfl and others
    Target OS: Linux for x86-64
    Compiling tipos_de_datos.pas
    Linking tipos_de_datos
    
    
    /usr/bin/ld.bfd: warning: link.res contains output sections; did you forget -T?
    101 lines compiled, 0.1 sec 
    $ ./tipos_de_datos
    ...
    
----

