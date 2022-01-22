with Ada.Text_IO;		  use Ada.Text_IO;
with Ada.Integer_Text_IO;         use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;           use Ada.Float_Text_IO;

procedure O32 is
   
   ------------------------------------------
   --                   TYPER                    
   ------------------------------------------
   type C2 is 
      record
	 T : Boolean;
	 L : Character;
      end record;
   
   type C1 is
      record
	 Y : Character;
	 Q : Character;
      end record;
   
   type typ3 is 
      record
	 J : C1;
	 B : C1;
	 O : C2;
      end record;
   --/////////////////////////////////////////
   type B1 is
      record
	 S : Float;
	 Z : String(1..4);
      end record;
   
   type typ2 is
      record
	 D : B1;
	 U : B1;
      end record;
   --/////////////////////////////////////////
   type typ1 is
      record
	 W : Character;
	 P : String(1..4);
      end record;
   
   -------------------------------------------
   --                  PROCEDURER 
   -------------------------------------------
   procedure Get (DS1 : Out typ1) is
      Ch : Character;   
   begin
      Get(DS1.W);
      Get(Ch);
      Get(DS1.P);
   end Get;
   
   procedure Put (DS1 : in typ1) is
   begin
      Put(DS1.W);
      Put(" ");
      Put(DS1.P);
   end Put;
   
   --//////////////////////////////////////
   
   procedure Get (DS2 : out typ2) is
      Ch : Character;   
   begin
      Get(DS2.D.S);
      Get(Ch);
      Get(DS2.D.Z);
      Get(Ch);
      Get(DS2.U.S);
      Get(Ch);
      Get(DS2.U.Z);
      
   end Get;
   
   procedure Put(DS2 : in typ2) is
   begin
      Put(DS2.D.S,0,3,0);
      Put(" ");
      Put(DS2.D.Z);
      Put(" ");
      Put(DS2.U.S,0,3,0);
      put(" ");
      put(DS2.U.Z);

   end Put;
   
   --//////////////////////////////////////
   
   procedure Get(DS3 : out typ3) is
      Ch : Character;
   begin
      Get(DS3.J.Y);
      Get(Ch);
      Get(DS3.J.Q);
      Get(Ch);
      Get(DS3.B.Y);
      Get(Ch);
      Get(DS3.B.Q);
      Get(Ch);
      Get(CH);
      if Ch = 'T' then
	 DS3.O.T := True;
      else
	 DS3.O.T := False;
      end if;  
      GeT(Ch);
      Get(DS3.O.L);
      
   end Get;
   
   procedure Put (DS3 : in typ3) is
      
   begin
      
      Put(DS3.J.Y);
      put(" ");
      Put(DS3.J.Q);
      Put(" ");
      Put(DS3.B.Y);
      Put(" ");
      put(DS3.B.Q);
      Put(" " );
      if DS3.O.T = True then
	 Put("True ");
      else 
	 Put("False ");
      end if;
      Put(DS3.O.L);
      
      -----------------------------------------
      --             HUVUDPROGRAM
      -----------------------------------------
      
   end Put;

   DS1 : typ1;
   DS2 : typ2;
   DS3 : typ3;
   
begin
   Put_Line("För DS1:");
   Put("Mata in datamängd: ");
   Get(DS1);
   Put("Inmatad datamängd: ");
   Put(DS1);
   New_Line(2);
   
   Put_Line("För DS2:");
   Put("Mata in datamängd: ");
   Get(DS2);
   Put("Inmatad datamängd: ");
   Put(DS2);
   New_Line(2);
   
   Put_Line("För DS3:");
   Put("Mata in datamängd: ");
   Get(DS3);
   Put("Inmatad datamängd: ");
   Put(DS3);
   
end O32;



