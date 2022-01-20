with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
    with Ada.Text_IO;         use Ada.Text_IO;

procedure Testdivisble is
   
   A, B, Y,M,D : Integer;
   Bool : Boolean;
   S : String(1..10);
   X : Integer;
   
Ch : Character;   
begin
   
   Get_Line(S,X);
   Get(Y);
   Get(Ch);
   Get(M);
   Get(Ch);
   Get(D);
   
   Put(Y);
   Put(M);
   Put(D);
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   --  Get(A);
  
   --  if (A mod 4) = 0 then
   --     Bool := True;
   --     if (A mod 100) = 0 then
   --  	 Bool := False;
   --  	  if (A mod 400) = 0 then
   --     Bool := True;
   --  end if;
   --  	 end if;
   --  end if;
   
   --  if Bool = True then
   --     Put("TRUE");
   --  else
   --     Put("FALSE");
   --     end if;
     
     
     	 --Nedanstående fukar nästan, förutom för 2100.
      --  if (Y mod 4) = 0 then
      --  	 Bool := True;
      --  elsif (Y mod 100) = 0 then
      --  	 Bool := False;
      --  elsif (Y mod 400) = 0 then
      --  	 Bool := True;
      --  end if;
 

   
end Testdivisble;
