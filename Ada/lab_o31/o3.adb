with Ada.Text_Io; use Ada.Text_Io;
with Ada.Integer_Text_Io; use Ada.Integer_Text_Io;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

   ---------------------------------------------

procedure O3 is
   
   ------------------------------------------
   --                   TYPER                    
   ------------------------------------------
   
   type Typ1 is                   --Dessa värden hette DS1 till DS3 tidigare men
     array (31..35) of float;     --ändrades då jag fick komplettering för det,
                                  --och det sades att variablarna skulle heta
                                  --på det viset.
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
   
   procedure Put (DS3 : in typ3) is  --fick komplettering för att DS3
   begin                          --lagrar data på fel plats, vilket den inte
                                  --gör. Charrange2 /= charrange.
      for I in DS3'first..DS3'last loop
	 for J in Charrange2 loop
	    Put(" ");
	    Put(DS3(I,J),Width  => 1);
	 end loop;
      end loop;
      --Debug C(73,'4') Stämmer överens med vad värdet ska vara enligt
      New_Line;     --uppgift etc..
      
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
   
   DS1 : Typ1;--Enligt uppgift så står det att datatyperna DS1 till DS3 ska
   DS2 : Typ2;--deklareras, vilket de gjort enligt uppgiften.
   DS3 : Typ3;--men i kompleteringen står det att jag saknar DS1 till DS3 som
              --variabler. Ska jag alltså
              --endast byta namn på variablerna från A till C till DS1 till DS3?
begin         --Om jag byter namn på variablerna så måste jag byta namn på
            --typerna då man inte kan ha DS1 : DS1; utan att få kompeleringsfel 
            --Om detta är fel snälla skriv det i nästa kompleteringstext då
            --jag inte riktigt förstår kompletteringarna.
   
   Put_line("För DS1:");
   Put("Mata in datamängd: ");  --Flyttade ut put för att fick komplettering
   Get(DS1);                      --pga det i O3.2 och antar att samma gäller
   Put("Inmatad datamängd:");	--här.
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
