program vectoresOO;
uses
  uvectores_oo,
  sysutils;

var
  U, V     : TVector;
  x,y,m,a  : real;
  E        : real;

begin

   write('vector U componente X= ');
   readln(x);
   write('vector U componente Y= ');   
   readln(y);
   U := TVector.Crear(x,y);

   write('vector V componente X = ');
   readln(x);
   write('vector V componente Y= ');   
   readln(y);
   V := TVector.Crear(x,y);
   
   { write('vector V magnitud= '); }
   { readln(m); }
   { write('vector V angulo= ');    }
   { readln(a); }
   { V:= VectorCrear_MagnitudAngulo(m, a); }
   
   write('Escalar= ');   
   readln(E);

   writeln('U= ', U.ComoCadena);           
   writeln('V= ', V.ComoCadena);


   writeln('UxE= ', U.x_escalar(E).ComoCadena);
   writeln('VxE= ', V.x_escalar(E).ComoCadena);

   writeln('U+V= ', U.Suma(V).ComoCadena);

   writeln('U.V= ', U.ProductoPunto(V));
   writeln('UxV= ', U.Modulo_ProductoCruz(V));

  {Por disciplina, antes de terminar "destruimos" los objetos}
  { F1.Free; }
  { F2.Free; }
  { R1.Free; }
  { R2.Free; }
  { R3.Free; }
  { R4.Free; }
   
end.
