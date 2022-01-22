with Ada.Text_Io; use Ada.Text_Io;
with Ada.Integer_Text_Io; use Ada.Integer_Text_Io;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

   ---------------------------------------------

procedure O3 is
   
   ------------------------------------------
   --                   TYPER                    
   ------------------------------------------
   
   type Typ1 is                   
     array (31..35) of float;     
                                  
   --/////////////////////////////////////////
   
   subtype Charrange is Character range '5'..'9';
   
   type B2 is 
     array (Charrange) of String(1..5);
   
   type Typ2 is
     array (boolean) of B2;
   
   --/////////////////////////////////////////
   subtype Charrange2 is Character range '4'..'8';
   
   type Typ3 is
     array (73..74, Charrange2) of Integer;
   
   -------------------------------------------
   --                  PROCEDURER 
   -------------------------------------------
   
   procedure Get (DS3 : out typ3) is
   begin
      
      for I in  DS3'first..DS3'last loop
	 for J in  Charrange2 loop
	    Get(DS3(I,J));
	 end loop;
      end loop;
      Skip_Line;
   end Get;
   
   ---------------------
   
   procedure Put (DS3 : in typ3) is  
   begin                          
                                 
      for I in DS3'first..DS3'last loop
	 for J in Charrange2 loop
	    Put(" ");
	    Put(DS3(I,J),Width  => 1);
	 end loop;
      end loop;
  
      New_Line;    
      
   end Put;
   
   --//////////////////////////////////////
   
   procedure Get (DS2 : out typ2) is
      Ch : Character;
   begin
      
      for J in Boolean loop
	 for I in reverse Charrange loop
	    Get(DS2(J)(I));
	    if I = Charrange'First and J = Boolean'Last then
	       exit;
	    end if;
	    Get(Ch);
	 end loop;
      end loop;
      
   end Get;
   ----------------------
   procedure Put (DS2 : in typ2) is
      
   begin
      for J in Boolean loop
	 for I in reverse Charrange loop
	    Put(" ");
	    Put(DS2(J)(I));
	 end loop;
	   end loop;
     
      
   end Put;
   
   --//////////////////////////////////////
   
   procedure Get (DS1 :out Typ1) is
   begin
   
      for I in reverse DS1'First..DS1'Last loop
	 Get(DS1(I));
      end loop;
      Skip_Line;
   end Get;
   ---------------------  
   procedure Put (DS1 : in Typ1) is 
   begin
      
      for I in reverse DS1'First..DS1'last loop
	 Put(" ");
	 Put(DS1(I),0,3,0);
      end loop;
      
   end Put;
   
   -----------------------------------------
   --             HUVUDPROGRAM
   -----------------------------------------
   
   DS1 : Typ1;
   DS2 : Typ2;
   DS3 : Typ3;
   
begin         
   
   Put_line("För DS1:");
   Put("Mata in datamängd: ");  
   Get(DS1);                      
   Put("Inmatad datamängd:");	
   Put(DS1);                      
   New_Line(2);

   Put_line("För DS2:");
   Put("Mata in datamängd: ");
   Get(DS2);
   Put("Inmatad datamängd:");
   Put(DS2);
   New_Line(2);
   
   Put_Line("För DS3:");
   Put("Mata in datamängd: ");
   Get(DS3);
   Put("Inmatad datamängd:");
   Put(DS3);
   
end O3; 
