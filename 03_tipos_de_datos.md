
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

Este [código fuente](tipos_de_datos.pas) compila con Free Pascal, con
el siguiente comando:

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

