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

```python
    v = vector(magnitud=10, angulo=0)
    u = polar_a_componentes( v )
    
    def polar_a_componentes( v ):
        return vector(x = v.magnitud * cos( v.angulo ),
                      y = v.magnitud * sin( v.angulo ) )
```

### Vector por un número

Acá se muestra el constructor por componentes.

```python
    a = vector(x=3, y=4)
    n = 3
    
    def vector_x_num( vector, num ):
        return vector( vector.x * num, vector.y * num )
```

### Suma de Vectores

```python
    vector_suma( a, b ):
        return vector( a.x + b.x,
                       a.y + b.y )
```


### Producto escalar, producto punto

```python
    a = vector(x=3, y=4)
    b = vector(x=3, y=4)
    
    def producto_escalar( a, b ):
        return (a.x * b.x) + (a.y * b.y)
```

### Módulo del Producto cruz

```python
    a = vector(x=3, y=4)
    b = vector(x=5, y=6)
    
    def modulo_producto_cruz( a, b ):
        return sqrt(((a.x*.y)-(a.y*b.x))**2)
```


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

Algunos lenguajes soportan la especificación de los tipos de datos a
usarse.

Para el programador mejora la legibilidad y facilita la depuración,
para el compilador la información de tipos de datos permite optimizar
la creación de código de máquina.

Además de tipos de dato nativos, como "integer", "real" o "string",
Algunos lenguajes permiten la creación de tipos de dato definidos por
el usuario. Se construyen a partir de los tipos nativos del lenguaje
pero permiten al programador expresar relaciones nombradas y
fácilmente asequibles entre datos más elementales.


## Versión en C

Esta versión en C muestra el uso de tipos de datos a través del uso de
"struct".

[Acá](https://github.com/rgarcia-herrera/vectores/blob/master/tipos_de_datos.c)
el código fuente.

Se compila con gcc así:

    $ gcc -lm tipos_de_datos.c

----


## Versión en Pascal

Pascal tiene soporte para tipos de datos definidos por el usuario a
través del tipo "record".

Este [código fuente](https://github.com/rgarcia-herrera/vectores/blob/master/tipos_de_datos.pas)
compila en [Free Pascal](http://freepascal.org), con el siguiente
comando:


    $ fpc tipos_de_datos.pas


----

# Orientación a Objetos

La transición de tipos de datos a orientación a objetos es notoria
pero suave. A la distancia pareciera que el único cambio consiste de
acuerpar funciones en la misma estructura.

Los tipos de datos de la sección anterior se convierten en clases, lo
que simplifica la definición de las funciones a través de la
autorreferencia con el identificador "self", se nota en la omisión de
un argumento que ya no es necesario.

A continuación se muestra el mismo programa pero evolucionado.


## Implementación en Pascal

Free Pascal tiene soporte para sintaxis orientada a objetos. 

Esta versión muestra la técnica para crear una "Unit" que es la forma
en que Pascal empaqueta y distribuye bibliotecas.

El código fuente está dividido en dos archivos:
[uvectores_oo.pas](https://github.com/rgarcia-herrera/vectores/blob/master/uvectores_oo.pas)
 donde se definen las clases y 
[vectores_oo.pas](https://github.com/rgarcia-herrera/vectores/blob/master/vectores_oo.pas)
donde se instancían y se usan.

   
Compila en [Free Pascal](http://freepascal.org), con el siguiente
comando:


    $ fpc -Mobjfpc vectores_oo.pas


## Implementación en C++

El lenguaje C++ agrega programación orientada a objetos al lenguaje C.

En esta versión también se muestra el uso de un archivo de encabezado
(.h) que es una forma de crear bibliotecas cuya funcionalidad puede
incluirse en otros programas.

El archivo
[vectores_oo.h](https://github.com/rgarcia-herrera/vectores/blob/master/vectores_oo.h)
declara la clase que se instancía en
[vectores_oo.cpp](https://github.com/rgarcia-herrera/vectores/blob/master/vectores_oo.cpp).

Se muestran dos formas de crear una función miembro, también conocida
como método: una al declarar la clase, cual es el caso del método
[x_escalar](https://github.com/rgarcia-herrera/vectores/blob/master/vectores_oo.h#L28),
otra creando un prototipo al declarar la clase y detallándolo
posteriormente, como en el caso del método
[ProductoPunto](https://github.com/rgarcia-herrera/vectores/blob/master/vectores_oo.h#L65).


## Implementación en Python

Python es un lenguaje de programación con excelente soporte para
programación orientada objetos: la implementación es notoriamente
breve y clara.

Nótese cómo el método \_\_repr\_\_ de las clases que heredan de "object"
es una forma integral al lenguaje del ComoCadena que hemos visto en
otras implementaciones.

Además la capacidad de declarar argumentos nombrados y valores default
en la definición de una función hacen innecesario el polimorfismo de
constructores.

En Python basta con que dos archivos con extensión ".py" estén en el
mismo directorio para que uno pueda incluir de otro.

El archivo [vectores_oo.py](https://github.com/rgarcia-herrera/vectores/blob/master/vectores_oo.py) hace de biblioteca y en él se
declara la clase que se usa en [vectores.py](https://github.com/rgarcia-herrera/vectores/blob/master/vectores.py).

