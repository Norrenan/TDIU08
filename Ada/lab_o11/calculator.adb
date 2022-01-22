with Ada.Text_Io;                          use Ada.Text_Io;
with Ada.Integer_Text_Io;                  use Ada.Integer_Text_Io;
with Ada.Float_Text_Io;                    use Ada.Float_Text_Io;
with Ada.Numerics;                         use Ada.Numerics;
with Ada.Numerics.Elementary_Functions;    use Ada.Numerics.Elementary_Functions; 

procedure Calculator is
   
   
   function Calculate_Factorial (N : Integer) return Integer is --returnerar heltal enligt uppgiften
 
      Fak : Integer := 1;
    
   begin
     
      for I in reverse 1..N loop
	 --formel för n fakultet: N! = N * (N-1) * ...*1
	 Fak := Fak*I;
	
	end loop; 
          return Fak;
   
   end Calculate_Factorial;
   
   -------------------------------------------------------
   
   procedure Factorial_Program is
      
      Factorial : Integer;
   begin
      
      Put("Mata in N: ");
      Get(Factorial);
      Put(Factorial, Width => 0);
      Put("-fakultet = ");
      
     Put(Calculate_Factorial(Factorial), Width => 1);
      
   end Factorial_Program;
   
   -----------------------------------------------------------
   
   procedure Calculate_Angles (Hc, Sa : in float; Va, Vb, Vc : out float) is 
   begin
      
      Va := Arcsin(Float(sa)/Float(Hc)); -- räkna ut Va
      Va := (Va*360.0)/(2.0*Pi); -- i grader
      
      Vb := Arccos(Float(Sa)/Float(Hc));
      Vb := (Vb*360.0)/(2.0*Pi); -- i grader
       
      Vc := 180.0 - (Va+Vb);
	
   end Calculate_Angles;
   
   ------------------------------------------------------------
   
   procedure Angle_Program is
      Nusan : float;
      Katet : float;
      Va : Float;
      Vb : Float;
      Vc : Float;
	
   begin
      Put("Mata in hypotenusans längd: ");
      Get(Nusan);
      Skip_Line;
      Put("Mata in motstående kateters längd: ");
      Get(Katet);
      Skip_Line;
     
      Calculate_Angles(Nusan, Katet, Va, Vb, Vc);
      
      Put("Va: ");
      Put(Va,0,0,0);
      Put(" grader");
      New_Line;
      Put("Vb: ");
      Put(Vb,0,0,0);
      Put(" grader");
      New_Line;
      Put("Vc: ");
      Put(Vc,0,0,0);
      Put(" grader");
      
   end Angle_Program;
   
   -------------------------------------------------------
   
   function Calculate_Hypothenuse (A, B : Integer) return Float is
      
      Nusan : Float;   
      
   begin
      
      Nusan := Sqrt(Float(A)**2+Float(B)**2);
      null;
      return Nusan;
      end Calculate_Hypothenuse;
      
   --------------------------------------------------------   
      
   procedure Hypothenuse_Program is
      
      A : Integer;
      B : Integer;
      C : Float; --hypotenusan
      
   begin
      
      Put("Mata in kateternas längder: ");
      Get(A);
      Get(B);
      Skip_Line;
      
      C := Calculate_hypothenuse(A, B);
      Put("Hypotenusan är ");
      Put(C,1,2,0);
      
      end Hypothenuse_Program;
   
   ----------------------------------------------------   
      
   procedure Menu_Selection(Selections : out Integer) is
      
   begin
      
      --underprogrammet Menu_selections   
      Put_Line("=== HUVUDMENY ===");
      Put_Line("1. Beräkna hypotenusa");
      Put_Line("2. Beräkna triangelvinklar");
      Put_Line("3. Beräkna N-fakultet");
      Put_Line("4. Avsluta programmet");

   
      loop
	 Put("Val: ");
	 Get(selections);

	 if Selections <=0 or Selections >=5 then
	    Put_line("Felaktigt val!");
	 else
	    exit;
	 end if;
      end loop;
      
     
   end Menu_Selection;
   
   -------------------------------------------------------
   
   Selections : Integer;
   
   begin
   
   Put_line("Välkommen till miniräknaren!");   
   
   loop
   
   Menu_Selection(Selections);
   
   if Selections = 1 then
      Hypothenuse_Program;
      New_Line;
      
   elsif Selections = 2 then
      Angle_Program;
      New_Line;
      
      
   elsif Selections = 3 then
      Factorial_Program;
      New_Line;
      
   elsif Selections = 4 then
      Put("Ha en bra dag!");
      exit;
   end if;
   
   New_Line;
   
   end loop;
   
end Calculator;
