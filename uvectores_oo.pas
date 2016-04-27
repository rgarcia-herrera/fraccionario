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
   
  constructor Crear(a,b: real);
  constructor Crear_MagnitudAngulo(m, a : real);
  function x_escalar( escalar : real): TVector;
  function Suma(b : TVector): TVector;
  function ProductoPunto( b :  TVector): real;
  function Modulo_ProductoCruz( b : TVector ): real;
  function ComoCadena: string;
  destructor Free;
end;


                                                      
implementation	

{Crear un vector con sus componentes x y y}        
constructor TVector.Crear(a,b : real);
begin
   inherited Create;
   self.X := a;
   self.Y := b;
end;


{Crear un vector con magnitud y angulo}
constructor TVector.Crear_MagnitudAngulo(m, a : real);
begin
   self.X := m * cos( a );
   self.Y := m * sin( a );
end;

        
destructor TVector.Free;
begin
   inherited Destroy;
end;




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
   Result := '('+ FloatToStr(self.X) + 'x, ' + FloatToStr(self.Y) + 'y)';
end;

end.
