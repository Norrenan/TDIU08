with ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with ada.numerics.discrete_random;
with Ada.Float_Text_Io; use Ada.Float_Text_Io;
with Ada.Numerics.Float_Random; 

procedure Slump is
   
   procedure RandomFloat(FloatGen : in Ada.Numerics.Float_Random.Generator) is --Del 1, Flyttal
      use Ada.Numerics.Float_Random;
      A_Random_Float : Float;
   begin
      --reset(FloatGen);
      A_Random_Float := Random(FloatGen) * 100.0;  
      Put(A_Random_Float, Fore=>0, Exp=>0, Aft=>2); 
   end RandomFloat;
   
   
   procedure RandomFloatWithRange(X, Y : in Float;  --Del 3, Flyttal
				  FloatGen : in Ada.Numerics.Float_Random.Generator) is
      use Ada.Numerics.Float_Random;
      Custom_Float : Float;
   begin
      --reset(FloatGen);
      Custom_Float := Random(FloatGen)*(Y-X) + X;
      Put(Custom_Float, Fore=>0, Exp=>0, Aft=>2);
   end RandomFloatWithRange;
   
   
   procedure RandomInt(N, Sidor : in Integer) is  --Del 1+3, Tärning
      type RandRangeI is new Integer range 1 .. Sidor;
      package Rand_Int is new ada.numerics.discrete_random(RandRangeI);
      use Rand_Int;
      IntGen : Generator;
    -- num : RandRangeI;
      Sum : Integer := 0;
   begin
      for LI in 1 .. N loop
	 --reset(IntGen);
	-- num := random(IntGen);
	 Sum := Sum + Integer(random(IntGen));
      end loop;
      Put(Sum, Width => 1);
   end RandomInt;
   
   procedure Swap(a,b : in out character) is  --Del 2, Byt plats på characters
      c : Character;   
   begin
      c := a;
      a := b;
      b := c;
   end Swap;
   
   procedure RandomC(a,b : out Character) is  --Del 2, Characters
      subtype RandRangeC is
	Character range 'a' .. 'z';
      package Rand_C is
	 new Ada.Numerics.Discrete_Random(RandRangeC); 
      use Rand_C;
      CGen: Generator;
   begin
      -- Reset(CGen);
      a := Random(CGen);
      -- Reset(CGen);
      b := Random(CGen);
      if a > b then
	 Swap(a,b);
      end if;
      Put(" ");
      Put(a);
      Put(" ");
      Put(b);
      
   end RandomC;
   
   procedure Teckenloop(a,b : in Character) is  --Del 2, Character loop
   begin
      for LC in a .. b loop
	 Put(" ");
	 Put(LC);
      end loop;
   end Teckenloop;
   

   FloatGen : Ada.Numerics.Float_Random.Generator;                           
   a, b : Character;
   N : Integer;
   Sidor : Integer := 6;
   X, Y : Float;

begin
   Put_Line("DEL 1:");
   Put("Mata in antal 6-sidiga tärningar: ");
   Get(N);
   Put("Summa: ");
   RandomInt(N, Sidor);
   New_Line;
   Put_Line("Nu slumpas ett tal mellan 0.0 och 100.0.");
   Put("Slumpat flyttal: ");
   RandomFloat(FloatGen);
   New_Line(2);
   
   Put_Line("DEL 2:");
   Put_Line("Nu slumpas två tecken mellan a och z.");
   Put("Slumpade tecken:");
   RandomC(a,b);
   New_Line;
   Put("Alla tecken mellan ");
   Put(a);
   Put(" och ");
   Put(b);
   Put(":");
   Teckenloop(a,b);
   New_Line(2);
   
   Put_Line("DEL 3:");
   Put("Mata in tärningssort: ");
   Get(Sidor);
   Put("Mata in antal tärningar: ");
   Get(N);
   Put("Summa: ");
   RandomInt(N, Sidor);
   New_Line;
   Put("Mata in x: ");
   Get(X);
   Put("Mata in y: ");
   Get(Y);
   Put("Slumpat flyttal: ");
   RandomFloatWithRange(X,Y,FloatGen);
   

end Slump;
