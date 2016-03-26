program vectores_td;

type
  {Anteponer a los tipos una "T" es una buena costumbre.
   Se conoce como "notación húngara"}
  TVector = record
    X : real;
    Y : real;
  end;

var
  U, V     : TVector;
   x,y,m,a : real;
  E        : real;


function VectorCrear(x, y : real): TVector;
var
  temp : TVector;
begin
  temp.X := x;
  temp.Y := y;
  VectorCrear := temp;
end;


{Crear un vector con magnitud y angulo}
function VectorCrear_MagnitudAngulo(m, a : real): TVector;
begin
   VectorCrear_MagnitudAngulo := VectorCrear( m * cos( a ), m * sin( a ) );
end;


{Vector por un escalar}
function Vector_x_escalar(vector : TVector; escalar : real): TVector;
begin
   Vector_x_escalar := VectorCrear( vector.X * escalar, vector.Y * escalar);
end;

{Suma de Vectores}
function VectorSumar(a, b : TVector): TVector;
begin
   VectorSumar := VectorCrear( a.X + b.X, a.Y + b.Y );
end;


{Producto escalar o punto}
function VectorProductoPunto(a, b :  TVector): real;
begin
   VectorProductoPunto := (a.X * b.X) + (a.Y * b.Y);
end;

{Módulo del Producto cruz}
function VectorModulo_ProductoCruz(a, b : TVector ): real;
begin
   VectorModulo_ProductoCruz:= sqrt(sqr( (a.X * b.Y)-(a.Y*b.X)))
end;

{imprimir un vector}
procedure VectorImprimir(V : TVector);
begin
   writeln('(',V.X, 'x, ', V.Y, ')');
end;



begin
   write('vector U componente X= ');
   readln(x);
   write('vector U componente Y= ');   
   readln(y);
   U := VectorCrear(x,y);
   
   write('vector V magnitud= ');
   readln(m);
   write('vector V angulo= ');   
   readln(a);
   V:= VectorCrear_MagnitudAngulo(m, a);
   
   write('Escalar= ');   
   readln(E);
   
   write('U= ');
   VectorImprimir(U);
   write('V= ');   
   VectorImprimir(V);

   write('UxE= ');   
   VectorImprimir(Vector_x_escalar(U, E));
   write('VxE= ');      
   VectorImprimir(Vector_x_escalar(V, E));

   write('U+V= ');
   VectorImprimir(VectorSumar(U, V));

   write('U.V= ');      
   writeln(VectorProductoPunto(U, V));
   write('UxV= ');
   writeln(VectorModulo_ProductoCruz( U, V));

end.
