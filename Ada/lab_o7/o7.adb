with Ada.Text_IO;		  use Ada.Text_IO;
with Ada.Integer_Text_IO;         use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;           use Ada.Float_Text_IO;

procedure O7 is
   
   -------------------------------------------------------
   --Del 1
   -------------------------------------------------------
   function Fib (N : in Integer) return Integer is
      
   begin 
      
      if N = 0 then
	 return 0;
	 
      elsif N = 1 then
	 return 1;
      else 
	 return Fib(N-1) + Fib(N-2);
      end if;
   end Fib;
   
   -------------------------------------------------------
   --Del 2
   -------------------------------------------------------
   function Mulle_Meck (HH : in integer) return Integer is
      Temp : Integer;
   begin
      
      if Hh = 0 then
	 return 0;
      elsif HH = 1 then
	 return 1;
	 
      end if; 
      
      temp := 2 * (HH-2) + 3;
      return HH*temp + Mulle_Meck(HH-1);
      
   end Mulle_Meck;
   
   -------------------------------------------------------
   --Huvudprogram
   -------------------------------------------------------
   
   N, HH : Integer;
   
begin
   
   Put("Mata in N och HH: ");
   Get(N);
   Get(HH);
   Put("Fibonacci-tal nummer ");
   Put(N, Width => 0); 
   Put(" är ");
   Put(Fib(N), Width => 0);
   Put(".");
   New_Line;
   
   Put("Det behövs ");
   Put(Mulle_Meck(HH-1),Width => 0); --Mulle meck bygger hus
   Put(" stenar för att bygga trappan.");

end O7;
