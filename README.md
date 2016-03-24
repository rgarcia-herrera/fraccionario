# Operaciones con Vectores

## Reflexión didáctica acerca de algunos conceptos de Programación Orientada a Objetos.

El ejercicio consiste de la recapitulación de algunas técnicas y
mejores prácticas de programación. El programa bajo estudio hace
operaciones con vectores, las diferentes implementaciones permiten
contrastar la forma en que diferentes lenguajes y usos de lenguajes
dan lugar a formas de expresar la solución a un problema.


## Operaciones de vectores

### Vector por un número

a = vector(x=3, y=4)
n = 3

def vector_x_num( vector, num ):
    return vector( vector.x * num, vector.y * num )

### Suma de Vectores

vector_suma( a, b ):
    return vector( a.x + b.x,
                   a.y + b.y )

### Representación polar, como magnitud y ángulo

a = vector(magnitud=10, angulo=0)

x = a.magnitud * cos( a.angulo )
y = a.magnitud * sin( a.angulo )


### Producto escalar

a = vector(x=3, y=4)
b = vector(x=3, y=4)

def producto_escalar( a, b ):
    return (a.x * b.x) + (a.y * b.y)


### Producto cruz

pass


# Código spaghetti

Así llamado por que seguir el hilo de ejecución es parecido a seguir
una hebra de pasta en un plato de espaghetti: entra por acá, sale por
allá, regresa más arriba, etc.

En Basic esta es la forma natural de programar, usando la expresión
GOTO para controlar el flujo de un programa.



