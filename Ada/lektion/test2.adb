with Ada.Text_Io; use Ada.Text_Io;
with Ada.Float_Text_IO; use Ada.Float_Text_Io;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;

procedure Slumptest is
     
   G: Generator;
   X, Y, R, K : Float;
begin
   Reset(G);
 
   Get(X);
   Get(Y);
     R := Random(G)*(Y-X)+X;

     
     Put(R,0,2,0);
   
   
   New_Line(2);

   end Slumptest;
   
