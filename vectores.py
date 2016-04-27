from vectores_oo import Vector

x = input('vector U componente X= ')
y = input('vector U componente X= ')
U = Vector(x,y)
   
m = input('vector V magnitud= ')
a = input('vector V angulo= ')
V = Vector(m=m, a=a)
   
E = input('Escalar= ')

print "U=%s" % U
print "V=%s" % V

print 'UxE=%s' % U.x_escalar(E)
print 'VxE=%s' % V.x_escalar(E)

print 'U+V=%s' % U.Suma(V)
print 'U.V=%s' % U.ProductoPunto(V)
print '|UxV|=%s' % U.Modulo_ProductoCruz(V)
