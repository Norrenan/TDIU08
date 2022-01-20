with Ada.Text_IO;             use Ada.Text_Io;
with Ada.Integer_Text_IO;     use Ada.Integer_Text_Io;
with Ada.Float_Text_Io;       use Ada.Float_Text_Io;
with Ada.Numerics.Discrete_Random;  
with Ada.Numerics.Float_Random;
   
procedure Slump is
   
--------------------------------------------------------------------   

   procedure Slumpheltal (Number_Of_Dice, Tarningssort : in Integer) is
      
      subtype Mitt_Teckenintervall is
	Integer range 1 .. Tarningssort;
      
      package Min_Slumpcrazy is
	 new Ada.Numerics.Discrete_Random(Mitt_Teckenintervall);
      
      use Min_Slumpcrazy;
      
      G: Generator;
      Sum : Integer :=0;
      Rand : Integer;
   begin
     -- Reset(G);
      
      Put("Summa: ");
      for I in 1 .. Number_Of_Dice loop
	 Rand := Integer(Random(G));
	 Sum := Sum + Rand;
      end loop;
      
      Put(Sum, Width => 1);
      
      
   end Slumpheltal;
   --------------------------------------------------------
   procedure Slumptecken (A, B : out Character) is 
      
      subtype Mitt_Teckenintervall is
	Character range 'a' .. 'z';
      
      package Mitt_Slumptecken is
	 new Ada.Numerics.Discrete_Random(Mitt_Teckenintervall);
      
      use Mitt_Slumptecken;
      G: Generator;
      
   begin
    -- Reset(G);
      
     A := Random(G);
     B := Random(G);
     
   end Slumptecken;   
   
   ---------------------------------------------------
   
   procedure Slumpflyt (Z, X: in out Float; Y : in Float; F : in Ada.Numerics.Float_Random.generator) is
      use Ada.Numerics.Float_Random;
      
   begin
     -- Reset(G);   
      Z := Random(F)*100.0;
      
      X := Random(F) * (Y-X) + X;
      
   end Slumpflyt;   
   ----------------------------------------------------  

   procedure Swap (Tecken_1, Tecken_2 : in out Character) is
      
      Tecken : Character;
   begin
      
      Tecken := Tecken_1;
      Tecken_1 := Tecken_2;
      Tecken_2 := Tecken;
      
      
   end Swap;
   -------------------------------------------------------
   procedure Teckenloop (A, B : in Character) is
      
   begin
      
      for I in Character range A..B loop

	 Put(" ");
	 Put(I);
	 
      end loop;
      
   end Teckenloop;
   -------------------------------------------------------   
   Number_Of_Dice : Integer;
   Tarningssort : Integer := 6;
   Slumptecken_1, Slumptecken_2 : Character;
   Z : Float := 0.0;
   X : Float := 0.0;
   Y : Float := 0.0;
   
  F : Ada.Numerics.Float_Random.Generator;
begin
   
   Put_Line("DEL 1:");
   Put("Mata in antal 6-sidiga tärningar: ");
   
   Get(Number_Of_Dice);
   Skip_Line;
   Slumpheltal(Number_Of_Dice, tarningssort);--slumpa antal tärningar med 6T
   New_Line;
   
   Put_line("Nu slumpas ett tal mellan 0.0 och 100.0.");
   Put("Slumpat flyttal: ");
   Slumpflyt(Z, X, Y, F); --slumpning av flyttal mellan 0 och 100
   Put(Z,0,2,0);
   New_Line(2);
   
   
   
   Put_Line("DEL 2:");
   Put_Line("Nu slumpas två tecken mellan a och z.");
   Put("Slumpade tecken: ");
   Slumptecken(Slumptecken_1, Slumptecken_2);
   
   --while Slumptecken_1 = Slumptecken_2 loop  --se till att tecknen inte är samma, funkar ej när reset tas bort då samma slumptal alltid slumpas fram vid samma funktion. 
     -- Slumptecken(Slumptecken_2);
   --end loop;
   
   if Slumptecken_1 > Slumptecken_2 then  --byta plats på tecknen så störst är först.
      Swap(Slumptecken_1,Slumptecken_2);
   end if;
   
   Put(Slumptecken_1);
   Put(" ");
   Put(Slumptecken_2);
     
   New_Line;
   Put("Alla tecken mellan ");
   Put(Slumptecken_1);
   Put(" och ");
   Put(Slumptecken_2);
   Put(":");
   
   Teckenloop(Slumptecken_1,Slumptecken_2);
   New_Line(2);
   
   Put_Line("DEL 3:");
   Put("Mata in tärningssort: ");
   Get(Tarningssort);
   Put("Mata in antal tärningar: ");
   Get(Number_Of_Dice);
   
   Slumpheltal(Number_Of_Dice, Tarningssort);
   New_Line;
   
   Put("Mata in x: ");
   Get(X);
   Put("Mata in y: ");
   Get(Y);
   Put("Slumpat flyttal: ");
   Slumpflyt(Z,X,Y,F);
   Put(X,0,2,0);
   
end Slump;
