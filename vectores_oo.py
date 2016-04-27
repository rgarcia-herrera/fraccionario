# coding: utf-8
from math import sin, cos, sqrt

class Vector(object):

    # el constructor puede usar x,y o magnitud y ángulo
    def __init__(self, x=0, y=0, m=None, a=None):

        if m != None and a != None:
            self.X = m * cos(a)
            self.Y = m * sin(a)
        else:
            self.X = x
            self.Y = y
        
    # vector por escalar
    def x_escalar(self, escalar):
        return Vector(self.X * escalar, self.Y * escalar)

    # Suma de Vectores
    def Suma( self, v ):
        return Vector( self.X + v.X, self.Y + v.Y )

    # Producto escalar o punto
    def ProductoPunto( self, v ):
        return (self.X * v.X) + (self.Y * v.Y)

    # Módulo del Producto cruz
    def Modulo_ProductoCruz( self, v ):
        return sqrt(pow( (self.X * v.Y)-(self.Y * v.X), 2))

    # representación imprimible
    def __repr__(self):
        return "(%2.2fx, %2.2fy)" % (self.X, self.Y)

