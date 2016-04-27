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

   write('vector V componente X= ');
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


   writeln('UxE= ', TVector.x_escalar(U, E).ComoCadena);
   writeln('VxE= ', TVector.x_escalar(V, E).ComoCadena);

   writeln('U+V= ', TVector.Suma(U, V).ComoCadena);

   writeln('U.V= ', TVector.ProductoPunto(U, V);
   writeln('UxV= ', TVector.Modulo_ProductoCruz( U, V));

  {Por disciplina, antes de terminar "destruimos" los objetos}
  { F1.Free; }
  { F2.Free; }
  { R1.Free; }
  { R2.Free; }
  { R3.Free; }
  { R4.Free; }
   
end.
