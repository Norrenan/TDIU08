with Ada.Command_Line; 	use Ada.Command_Line;
with Ada.Text_Io; 	use Ada.Text_Io;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;
procedure O5 is    
begin
   if Argument_count = 0 then
      Put("Inga argument angivna.");
   elsif Argument_count  < 2 or Argument_count > 2 then
      Put("Fel antal argument angivna.");
   else   
      Put_line("Meddelande: " & Integer'Value(Argument(1)) * Argument(2));
      Put("Programmet """ & Command_Name & """ avslutas.");
   end if; 
end O5;


      --  for Z in 1..Integer'Value(Argument(1)) loop
      --  	 Put(Argument(2));
      --  end loop;
