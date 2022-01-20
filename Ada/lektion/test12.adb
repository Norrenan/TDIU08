with Ada.Text_IO;		  use Ada.Text_IO;
with Ada.Integer_Text_IO;         use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;           use Ada.Float_Text_IO;
procedure Test is

begin
for B in Boolean loop
   if B =True then
      Put("true");
   else
      Put("false");
   end if;
   end loop;
	--  for I in 5..9 loop
   --     Get (DS2(B)(I));
      
end Test;
