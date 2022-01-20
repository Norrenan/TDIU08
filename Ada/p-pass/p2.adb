with Ada.Text_Io;		 use Ada.Text_Io;
with Ada.Integer_Text_Io;	 use Ada.Integer_Text_Io;
with Ada.Float_Text_Io;		 use Ada.Float_Text_Io;


procedure P2 is
   
   ----------------------------------------------------
   --Underprogram Operator, del 1
   ----------------------------------------------------
   function "+" (Flyttal : in Float; Heltal : in Integer) return Float is
   begin
      
      return(Flyttal + Float(Heltal));
      
   end "+";
   
   ----------------------------------------------------
   --Underprogram Procedure, del 2
   ----------------------------------------------------
   procedure Swap (F1, F2 : in out Float) is
      Temp : Float;
   begin
      
      Temp := F1;
      F1 := F2;
      F2 := Temp;
      
   end Swap;
   
   ----------------------------------------------------
   --Underprogram Function, del 3
   ----------------------------------------------------
   function Testa_Tecken (Ch : in Character) return Boolean is
   begin
      
      return Ch ='s' or Ch = 'S';
      
      --  if Ch = 'S' or Ch = 's' then	--alternativt men längre sätt.
      --  	 return true;
      --  else
      --  	 return False;
      --  end if;
      
   end Testa_Tecken;
   
   -----------------------------------------------------
   
   Heltal : Integer;
   Flyttal, F1, F2: Float;
   Ch : Character;
   
begin
   
   --del 1
   Put("Mata in ett flyttal och ett heltal: ");
   Get(Flyttal);
   Get(Heltal);
   Put("Summan av dessa blev: ");
   Put(Flyttal + Heltal, 0, 2, 0);
   New_Line(2);
   Skip_Line; --utifall användaren skriver in ett flyttal istället för en integer.
   
   --del 2
   Put("Skriv in två flyttal: ");
   Get(F1);
   Get(F2);
   Swap(F1,F2);
   Put("Flyttalen i omvänd ordning: ");
   Put(F1,0,1,0);
   Put(" ");
   Put(F2,0,1,0);
   New_Line(2);
   Skip_Line; -- kan vara bra att ha om användaren skriver in fler än två inputs etc(?)
   
   --del 3
   Put("Mata in ett tecken: ");
   Get(Ch);
   
   if Testa_Tecken(Ch) = True then
      Put("Tecknet var sant.");
   else
      Put("Tecknet var inte sant.");
   end if;

end P2;
