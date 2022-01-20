with Ada.Text_IO;               use Ada.Text_IO;
with Ada.Float_Text_IO;         use Ada.Float_Text_IO; 
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;

procedure Slumptest_Flyttal is
   
   G: Generator;
begin
  Reset(G);
   
   Put("10 slumpade flyttal: ");
   for I in 1 .. 10 loop
      Put((Random(G)*100.0), Fore => 0, Aft => 2, Exp => 0);
      Put(" ");
   end loop;
   
end Slumptest_Flyttal;
