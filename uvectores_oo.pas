unit uvectores_oo;


interface

uses
sysutils;

type
    TVector = class
   
    private
       X : real;
       Y : real;
   
    public
   
        constructor Crear(x, y : real);
   {constructor Crear_MagnitudAngulo(m, a : real);}
   
        function Vector_x_escalar(vector : TVector; escalar : real): TVector;
        function VectorSuma(a, b : TVector): TVector;
        function VectorProductoPunto(a, b :  TVector): real;
        function VectorModulo_ProductoCruz(a, b : TVector ): real;

        destructor Free;
    end;


                                                      
implementation	

constructor TVector.Crear(X, Y : real);
begin
   inherited Create;
   self.X := X;
   self.Y := Y;
end;

destructor TVector.Free;
begin
   inherited Destroy;
end;


{Crear un vector con magnitud y angulo}
        { function TVector.Crear_MagnitudAngulo(m, a : real): TVector; }
{ begin }
{    VectorCrear_MagnitudAngulo := VectorCrear( m * cos( a ), m * sin( a ) ); }
{ end; }


{Vector por un escalar}
function TVector.x_escalar(escalar : real): TVector;
begin
   Result := TVector.Crear( self.X * escalar, self.Y * escalar);
end;

{Suma de Vectores}
function TVector.Suma(b : TVector): TVector;
begin
   Result := TVector.Crear( self.X + b.X, self.Y + b.Y );
end;


{Producto escalar o punto}
function TVector.ProductoPunto(b :  TVector): real;
begin
   Result := (self.X * b.X) + (self.Y * b.Y);
end;

{Módulo del Producto cruz}
function TVector.Modulo_ProductoCruz(b : TVector ): real;
begin
   Result:= sqrt(sqr( (self.X * b.Y)-(self.Y*b.X)))
end;

{autorrepresentacion imprimible}
function TVector.ComoCadena: string;
begin
   Result := '(' + self.X + 'x, ' + self.Y + ')';
end;

end.
