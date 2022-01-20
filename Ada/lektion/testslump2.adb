with Ada.Text_IO;             use Ada.Text_Io;
with Ada.Integer_Text_IO;     use Ada.Integer_Text_Io;
with Ada.Float_Text_Io;       use Ada.Float_Text_Io;
with Ada.Numerics.Discrete_Random;  
with Ada.Numerics.Float_Random;
   
procedure Slump is
   --UPPDATERAD => TESTSLUMP3!!!
   ------------------------------------------------
 
   procedure Slumpsex (Number_Of_Dice : in Integer) is
    
   
      
   subtype Mitt_Teckenintervall is
     Integer range 1 .. 6;
   
   package Min_slumptarning is
      new Ada.Numerics.Discrete_Random(Mitt_teckenintervall);
   
   use Min_slumptarning;
   
   G: Generator;
   Sum : Integer :=0;
   Rand : integer;
begin
  Reset(G);
   
   Put("Summa: ");
   for I in 1 .. Number_Of_dice loop
      Rand := Integer(Random(G));
     Sum := Sum + Rand;
   end loop;
   
   Put(Sum, Width => 1);
   
end slumpsex;
--------------------------------------------------------
procedure Slumpcrazy (Number_Of_Dice, Tarningssort : in Integer) is
   
   subtype Mitt_Teckenintervall is
     Integer range 1 .. Tarningssort;
   
   package Min_Slumpcrazy is
     new Ada.Numerics.Discrete_Random(Mitt_Teckenintervall);
   
   use Min_Slumpcrazy;
   
   G: Generator;
     Sum : Integer :=0;
   Rand : Integer;
begin
   Reset(G);
   
   Put("Summa: ");
   for I in 1 .. Number_Of_Dice loop
      Rand := Integer(Random(G));
      Sum := Sum + Rand;
   end loop;
   
   Put(Sum, Width => 1);
      
      
end Slumpcrazy;
--------------------------------------------------------
procedure Slumptecken (Tecken : out Character) is 
   
   subtype Mitt_Teckenintervall is
     Character range 'a' .. 'z';
   
   package Mitt_Slumptecken is
      new Ada.Numerics.Discrete_Random(Mitt_Teckenintervall);
   
   use Mitt_Slumptecken;
   G: Generator;
   
begin
   Reset(G);
   
   Tecken := Random(G);

end Slumptecken;   
   

---------------------------------------------------

procedure Slumpflyt (F : in Ada.Numerics.Float_Random.Generator) is
use Ada.Numerics.Float_Random;
begin
--Reset(F);   
   
Put((Random(F)*100.0),0,2,0);

end Slumpflyt;   
----------------------------------------------------
 
procedure Crazy_Slumpflyt (X, Y : in Float; F : in Ada.Numerics.Float_Random.generator) is
 use Ada.Numerics.Float_Random;
   Rand: Float;
begin
   --Reset(F);
   Rand:= Random(F) * (Y-X) + X;
   Put(Rand,0,2,0);
 
   end Crazy_Slumpflyt;


-----------------------------------------------------  

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

      Put(I);
      Put(" ");
      
   end loop;
   
end Teckenloop;
-------------------------------------------------------   
Number_Of_Dice : Integer;
Tarningssort : Integer := 6;
Slumptecken_1 : Character;
Slumptecken_2 : Character;
X, Y : Float;
F : Ada.Numerics.Float_Random.Generator;

begin
   
   Put_Line("DEL 1:");
   Put("Mata in antal 6-sidiga tärningar: ");
   
   Get(Number_Of_Dice);
   Skip_Line;
   Slumpsex(Number_Of_Dice);--slumpa antal tärningar med 6T
   New_Line;
   
   Put_line("Nu slumpas ett tal mellan 0.0 och 100.0.");
   Put("Slumpat flyttal: ");
   Slumpflyt(F); --slumpning av flyttal mellan 0 och 100
   New_Line(2);
   
   
   Put_Line("DEL 2:");
   Put_Line("Nu slumpas två tecken mellan a och z.");
   Put("Slumpade tecken: ");
   Slumptecken(Slumptecken_1);
   Slumptecken(Slumptecken_2);
   
   while Slumptecken_1 = Slumptecken_2 loop
      Slumptecken(Slumptecken_2);
   end loop;
   
   if Slumptecken_1 > Slumptecken_2 then
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
   Put(": ");
   
   Teckenloop(Slumptecken_1,Slumptecken_2);
   New_Line(2);
   
   Put_Line("DEL 3");
   Put("Mata in tärningssort: ");
   Get(Tarningssort);
   Put("Mata in antal tärningar: ");
   Get(Number_Of_Dice);
   
   Slumpcrazy(Number_Of_Dice, Tarningssort);
   New_Line;
   
   Put("Mata in x: ");
   Get(X);
   Put("Mata in y: ");
   Get(Y);
   Crazy_Slumpflyt(X,Y,F);   
   
end Slump;
