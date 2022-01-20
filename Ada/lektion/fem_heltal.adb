with Ada.Text_IO;             use Ada.Text_IO;
with Ada.Integer_Text_IO;
with Ada.Numerics.Float_Random;
procedure Fem_Heltal is
   
   X: Integer;
   Y: Integer := 0;
   
begin   
     
   Ada.Text_IO.Put("Skriv in 5 heltal: ");
   for I in 1..5 loop
      Ada.Integer_Text_IO.Get(X);
      Y:=X+Y;
      end loop;
  Ada.Integer_Text_IO.Put(Y,Width => 0 );
end Fem_Heltal;
