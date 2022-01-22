with Ada.Text_IO;		  use Ada.Text_IO;
with Ada.Integer_Text_IO;         use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;           use Ada.Float_Text_IO;


procedure O4 is
   ----------------------------------------------------
   --Egendefinerade exceptions
   --------------------------------------------------- 
   Format_Error : exception;
   Year_Error : exception;
   Month_Error: exception;
   Day_Error : exception; 
   
   function Check_Leap (Y : in integer) return Boolean is
      Bool : Boolean;
   begin
      
      if (y mod 4) = 0 then
	 Bool := True;
	 if (y mod 100) = 0 then
	    Bool := False;
	    if (y mod 400) = 0 then
	       Bool := True;
	    end if;
   	 end if;
      end if;
      
      return Bool;
      
   end Check_Leap;
   
   ------------------------------------------------
   -- DEL 1
   ------------------------------------------------
   procedure Get_Value_Safe(Min, Max : in Integer; Value : out Integer) is
      
   begin
      
      loop
	 begin
	    Put("Mata in värde (");
	    Put(Min, Width => 1);
	    Put(" - ");
	    Put(Max, Width => 1);
	    Put("): ");
	    Get(Value);
	    if Value > Max then
	       Put("För stort värde. ");
	    elsif Value < Min then
	       Put("För litet värde. ");
	    else
	       exit;
	    end if;
	 exception
	    when Data_Error =>
	       Put("Fel datatyp. ");
	       Skip_Line;
	 end;
	 
      end loop;
      
   end Get_Value_Safe;
   
   ------------------------------------------------------------------
   --DEL 2
   ------------------------------------------------------------------
   
   procedure Get_Date_Safe ( Y, M, D : out integer) is
      
      S : String(1..10);
      
   begin
      
      Get(S);
      --kontrollera formatet
      if S(5) /= '-' or S(8) /= '-'  then
	 raise Format_Error;
      end if;
      for I in 1..4 loop
	 if S(I) < '0' or S(I) > '9' then
	    raise Format_Error;
	 end if;
      end loop;
      
      for I in 1..2 loop
	 if S(I+5) < '0' or S(I+5) > '9' then
	    raise Format_Error;
	 elsif S(I+8) < '0' or S(I+8) > '9' then
	    raise Format_Error;
	 end if;
      end loop;
      
      --kovertera strings till integers
      Y := Integer'Value(S(1..4));
      M := Integer'Value(S(6..7));
      D := Integer'Value(S(9..10));
      
      --kontrollera integers
      if Y < 100 or Y >= 10000 then
	 raise Format_Error;

      elsif Y < 1535 or Y > 9000 then
	 raise Year_Error;
	 
      elsif M <= 0 or M > 12 then
	 raise Month_Error;
	 
      elsif D > 31 or D <= 00 then
	 raise Day_Error;
	 
      elsif D = 31 and (M = 4 or M = 6 or M = 9 or M = 11) then --case
	 raise Month_Error;
	 
      elsif D > 29 and M = 2 then
	 raise Day_Error;
	 
      elsif D = 29 and M = 2 and Check_Leap(Y) = false then
	 raise Day_Error;
      end if;
      
   end Get_Date_Safe;
   
   procedure Display_date (Y, M, D : in Integer) is
   begin
      Put("År ");
      Put(Y, Width => 1);
      Put(", månad ");
      if M <= 9 then
      	 Put("0");
      end if;
      Put(M, Width => 1);
      Put(", dag ");
      if D <= 9 then
      	 Put("0");
      end if;
      Put(D, Width => 1);
      Put(".");
      
   end Display_date;
   
   ---------------------------------------------------------------
   --Definitioner
   ---------------------------------------------------------------
   Min, Max, Value : Integer;  
   Year, Month, Day : Integer;
   
begin
   
   
   Put_Line("Del 1:");
   Put("Mata in Min och Max: ");
   Get(Min);
   Get(Max);
   Skip_Line;
   
   Get_Value_Safe(Min, Max, Value);
   Put("Du matade in heltalet ");
   Put(Value, Width => 1);
   Put(".");
   New_Line(2);
   
   Put_Line("Del 2:");
   Skip_Line;
   loop
      begin
	 Put("Mata in datum: ");
	 Get_Date_Safe(Year, month, day);

	 exit;
	 
      exception
	 
	 when Format_Error =>
	    Put("Felaktigt format! ");
	    Skip_Line;
	    
	 when Year_Error =>
	    Put("Felaktigt år! ");
	    
	 when Month_Error =>
	    Put("Felaktig månad! ");
	    
	 when Day_Error =>
	    Put("Felaktig dag! ");
      end;
   end loop;
   
   Display_date(Year, Month, Day); 
   
end O4;
