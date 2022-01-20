with Ada.Text_Io;                           use Ada.Text_Io;
with Ada.Integer_Text_Io;                   use Ada.Integer_Text_Io;
with Ada.Numerics;                          use Ada.Numerics;
with Ada.Numerics.Elementary_Functions;     use Ada.Numerics.Elementary_Functions;
with Ada.Float_Text_Io;                     use Ada.Float_Text_Io;

procedure Math is
   
   ----------------------------------------------------  
   
   procedure Menu_Selection(Selection:out Integer) is
      
      
      
   begin
      
   
      
      Put ("=== HUVUDMENY ==="); New_Line;
      
      Put ("1. Beräkna hypotenusa"); New_Line;
      
      Put ("2. Beräkna triangelvinklar"); New_Line;
      
      Put ("3. Beräkna N-fakultet"); New_Line;
      
      Put ("4. Avsluta programmet"); New_Line;
      
      loop 
	 
	 Put ("Val: ");
	 
	 Get (Selection);
	 
	 if Selection <1 or Selection >4 then
	    
	    Put ("Felaktigt val!"); New_Line;
	    
	 end if;
	 
	 exit when Selection >=1 and Selection <=4;
	 
      end loop;
      
      
   end Menu_Selection;
   
   ----------------------------------------------------------------------  
   
   function Calculate_Hypothenuse (A, B :in Integer) return Float is
      
      L: Float :=0.0;
      
   begin
      
      L:= Sqrt (Float(A)**2 + Float(B)**2);
      
      return (L);
      
   end Calculate_Hypothenuse;
   
   ---------------------------------------------------------------------------  
   
   procedure Hypothenuse_Program is
      
      A: Integer;
      B: Integer;
      
   begin
      
      Put ("Mata in kateternas längder: ");
      
      Get (A);
      Get (B);
      
      Put ("Hypotenusan är ");
      Put (Calculate_Hypothenuse(A, B), Fore=>1, Aft=>2, Exp=>0);
      
      New_Line(2);
      
   end Hypothenuse_Program;
   
   -----------------------------------------------------------------------------
   
   
   procedure Calculate_Angles (Hc, Sa: in Float; Va, Vb, Vc: out Float) is

      
   begin
      
      Va := arcSin(Sa/Hc)*(180.0/Float(Pi));
      Vb := arcCos(Sa/Hc)*(180.0/Float(Pi));
      Vc := 90.0;
      
      
   end Calculate_Angles;
   
   
   -----------------------------------------------------------------------------  
   
   
   procedure Angle_Program is
      
      Hc: Float;
      Sa: Float;
      Va: Float;
      Vb: Float;
      Vc: Float;
      
   begin 	
      
      Put ("Mata in hypotenusans längd: ");
      Get (Hc);
      
      Put ("Mata in motstående kateters längd: ");
      Get (Sa);
      
      Calculate_Angles (Hc, Sa, Va, Vb, Vc);
      
      Put ("Va: ");
      Put ((Va), Fore=>1, Aft=>1, Exp=>0);
      Put (" grader");
      
      New_Line;
      
      Put ("Vb: ");
      Put ((Vb), Fore=>1, Aft=>1, Exp=>0);
      Put (" grader");
      
      New_Line; 
      
      Put ("Vc: ");
      Put ((Vc), Fore=>1, Aft=>1, Exp=>0);
      Put (" grader");
      
      New_Line(2);
      
   end Angle_Program;
   
   --------------------------------------------------------------------
   
   function Calculate_Factorial (N: in Integer) return integer is
      
      Result: Integer :=1;
      
   begin
      
      for I in 1..N loop
	 
	 Result:= Result*I;
	 
      end loop; 
      
      return Result;
      
   end Calculate_Factorial;
   
   -------------------------------------------------------------------
   
   procedure Factorial_Program is
      
      N: Integer;
      
   begin
      
      Put ("Mata in N: ");
      Get (N);
      
      Put ((N), width=>1);
      Put ("-fakultet = ");
      Put (Calculate_Factorial(N), Width=>1);
      
      New_Line(2);
      
   end Factorial_Program;
   
   ------------------------------------------------------------------
   
   
   Selection: Integer;
   
   
begin
      Put_line("Välkommen till miniräknaren!");
   loop
      
      Menu_Selection(Selection); 
      
      if Selection=1 then
	 
	 Hypothenuse_Program;
	 
	 
      elsif Selection=2 then 
	 
	 Angle_Program;
	 
	 
      elsif Selection=3 then
	 
	 Factorial_Program;
	 
	 
      end if;
      
      exit when Selection=4;
      
   end loop;
   
   Put ("Ha en bra dag!");
   
   
end Math; 
