with Ada.Text_IO;             use Ada.Text_Io;
with Ada.Integer_Text_IO;     use Ada.Integer_Text_Io;
with Ada.Float_Text_Io;       use Ada.Float_Text_Io;


procedure Moms_Tabell is
   
First_Price, Last_Price, Steps, Percent, Moms : Float;
  
begin
   
   loop
      
   Put("Första pris: ");
   Get(First_Price);
   -- Put(First_Price, 1, 3, 0);
   if 
     First_Price < 0.0 then
      Put_line("Felaktigt värde!");
   else
      exit;
      end if;
   end loop;
   
   loop   
   Put("Sista pris: ");
   Get(Last_Price);
   if
      Last_Price <= First_Price then
      Put_line("Felaktigt värde!");
   else
      exit;
   end if;
   end loop;
   
   loop
   Put("Steg: ");
   Get(Steps);
   if
     Steps <=0.0 then
      Put_line("Felaktigt värde!");
   else
      exit;
   end if;
   end loop;
      
   
   loop
   Put("Momsprocent: ");
   Get(Percent);
   if Percent <0.0 or Percent > 100.0 then
      Put_line("Felaktigt värde!");
   else
      exit;
   end if;
   end loop;
   
   New_Line;
   
   Put_Line("============ Momstabell ============");
   Put_Line("Pris utan moms  Moms   Pris med moms");
   
   
   while First_Price <= (Last_Price+0.001) loop  
      
   Moms := (Percent/100.0) * First_price;
   Put(First_Price, 6, 2, 0);
   Put(Moms, 8, 2, 0);
   Put(Moms + First_price, 9,2,0);
   New_Line;
   First_Price := First_Price + Steps;
   
   end loop;
   
end Moms_Tabell;
