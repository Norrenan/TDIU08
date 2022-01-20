with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure testarr is
   
  
   
   
   -- type Characther is new Character range '1'..'3';
   
   type Row is array(Character range '1'..'3') of String(1..5);
   type Board_A is array(boolean) of Row;
   
   
    procedure Test ( A : in out Board_A) is 
   begin
      for I in row'range loop
      Get(A(True)(I));
   end loop;
      end Test;
   
  -- Type Charrange2 is new  Character range '2'..'5';
   type Board_B is array(1..3, Character range '2'..'5') of Integer;

   A : Board_A;
   B : Board_B;

begin
   -- A(True)(1) := 2;
   
   for I in B'First..B'last loop
      for J in Character range '2' .. '5' loop
	 Get(B(I,J));
	     end loop;
   end loop;
   
   Test(A);
   
   
end testarr;
