with Ada.Text_IO;		  use Ada.Text_IO;
with Ada.Integer_Text_IO;         use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;           use Ada.Float_Text_IO;

procedure Hp is
   
   function "-" (Left, Right : in Float) return Float is
      Test : Float;
   begin
      
     
      return Left + right;
      
      end "-";
   
   
   X1,X2,X3 : float;
   
   procedure Summa (X1,X2,X3 : in Float) is
      begin
      Put(X1);
      Put(" ");
      Put(X2);
      Put(" ");
      Put(X3);
      
      end Summa;
   
begin
   
   
   Put("skriv 3 flyttal");
   Get(X1);
   Get(X2);
   Get(X3);
   
   
   Put(X1-X2-X3,0,1,0);
   New_Line(2);
   Summa(X1,X2,X3);
   null;
   
   end Hp;
