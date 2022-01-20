with Ada.Text_Io; use Ada.Text_Io;
with Ada.Integer_Text_Io; use Ada.Integer_Text_Io;
with Ada.Float_Text_Io; use Ada.Float_Text_Io;


procedure O2 is
   ----------------------------------------------------------------- 
   --Underprogrammet operator
   -----------------------------------------------------------------
   function "-" (H : in Integer; F : in Float) return Float is
   begin
      
      return Float(H)-F;
      
   end "-";
   
   ------------------------------------------------------------------- 
   --Underprogrammet procedure
   -------------------------------------------------------------------
   procedure TestaOrd (S : in out String; B : out Boolean) is
      
   begin
      
      if S(S'Last) = 's' then
	 B := True;

      else 
	 B := False;
	 S(S'Last) := 's';
      end if;
      
      Put("Ordet ");
      
   end TestaOrd;
   ------------------------------------------------------------------------  
   --Underprogammet Function
   ------------------------------------------------------------------------
   function TestaCh (Ch : in Character) return Boolean is
      
   begin
      
      if Ch = 's' or Ch = 'S' then
	 return True;
      else
	 return False;
      end if;   
      
   end TestaCh;
   
   ------------------------------------------------------------------------      
   Heltal : Integer;
   Flyttal : Float;
   S : String(1..5);
   Bool : Boolean; 
   Ch : Character;
begin
   
   Put("Mata in ett heltal och ett flyttal: ");  
   Get(Heltal);
   Get(Flyttal);
   Put("Differensen mellan dem är ");
   Put(Heltal - Flyttal,0,2,0);
   New_Line(2);

   Put("Skriv in ett 5 tecken långt engelskt substantiv: ");
   Get(S);
   Skip_Line;
   TestaOrd(S, Bool); 
   Put(S);
   
   if Bool = True then
      Put(" var troligtvis i plural från början");
   else
      Put(" var troligtvis inte i plural från början");
   end if;
   New_Line(2);
   
   Put("Mata in ett tecken: ");
   Get(Ch);
   
   Bool := TestaCh(Ch);
   Put("Tecknet var ");
   if Bool = True then
      Put("sant");
   else
      Put("inte sant");
   end if;
   
end O2;
