with Ada.Text_IO;		  use Ada.Text_IO;
with Ada.Integer_Text_IO;         use Ada.Integer_Text_IO;

package body Date_Package is
   
   function Check_Leap (date : in Date_Type) return Boolean is
      Bool : Boolean;
   begin
      
      if (Date.y mod 4) = 0 then
	 Bool := True;
	 if (Date.y mod 100) = 0 then
	    Bool := False;
	    if (Date.y mod 400) = 0 then
	       Bool := True;
	    end if;
   	 end if;
      end if;
      
      return Bool;
      
   end Check_Leap;
   
   procedure Check_Format (S : in String; A, B : in Integer) is
   begin
      for I in A..B loop
	 if S(I) < '0' or S(I) > '9' then
	    raise Format_Error;
	 end if;
         
      end loop;

   end Check_Format;
   
   function Check_Day (Date : in Date_Type) return Boolean is 
   begin
      
      if Date.D > 31 or Date.D <= 00 then
	 return false;
	 
      elsif Date.D = 31 and(Date.M = 4 or Date.M = 6 or Date.M = 9 or Date.M = 11) then
	 return false; 
	 
      elsif Date.D > 29 and Date.M = 2 then 
	 return false;
	 
      elsif Date.D = 29 and Date.M = 2 and Check_Leap(Date) = false then
	 return false;
      else
	 return True;
      end if;

   end Check_Day;
   
   function Check_Month (Date : in Date_Type) return Boolean is
   begin
      if Date.M <= 0 or Date.M > 12 then
   	 return False;
      else 
	 return True;
      end if;
      
   end Check_Month;
   
   procedure Check_Date (Date : in Date_Type) is
   begin
      
      if Date.Y < 100 or Date.Y >= 10000 then
	 raise Format_Error;

      elsif Date.Y < 1535 or Date.Y > 9000 then
	 raise Year_Error;
	 
      elsif Check_Month(Date) = False then
	 raise Month_Error;
	 
      elsif Check_Day(Date) = False then
	 raise Day_Error;
      end if;
      
      
   end Check_Date;
   
   procedure Get (Date : out Date_Type) is 
      S : String(1..10);
   begin
      Get(S);
      begin
	 --kontrollera formatet
	 if S(5) /= '-' or S(8) /= '-'  then 
	    raise Format_Error;
	 end if;
	 
	 Check_Format(S,1,4);  --skapade underprogram check_format efter komplettering
	 Check_Format(S,6,7);
	 Check_Format(S,9,10);
	 
	 --kovertera strings till integers
	 Date.Y := Integer'Value(S(1..4));
	 Date.M := Integer'Value(S(6..7));
	 Date.D := Integer'Value(S(9..10));
	 
	 --kontrollerar värden för kastningar
	 Check_Date(Date);

      end;
   end Get;
   
   --Underprogrammet put
   procedure put (Date : in Date_Type) is
   begin
      Put(Date.Y, Width => 1);
      Put("-");
      if Date.M <= 9 then
      	 Put("0");
      end if;
      Put(Date.M, Width => 1);
      Put("-");
      if Date.D <= 9 then
      	 Put("0");
      end if;
      Put(Date.D, Width => 1);
      
   end put;
   
   ------------------------------------------------------------------
   --DEL B
   ------------------------------------------------------------------
   
   --Underprogrammet Next
   function Next_Date (Date : in Date_Type) return Date_type is
      Next : Date_Type;   
   begin
      
      Next := Date;
      
      Next.D := Next.D +1;
      if Check_day(Next) = True then
	 return Next;
      else Next := date;
      end if;
      
      Next.D := 1;
      Next.M := Next.M +1;
      if Check_Month(Next) = True then
	 return Next;
      else 
	 Next := Date;
      end if;
      
      Next.D := 1;
      Next.M := 1;
      Next.Y := Next.Y +1;
      
      return Next;

   end Next_Date;
   
   
   --Hjälpunderprogram för Prev som kollar vilket som är sista datumet i månaden.
   procedure Last_Day_Of_Month (date : in out Date_Type) is
   begin
      
      if Date.M = 4 or Date.M = 6 or Date.M = 9 or Date.M = 11 then
	 Date.D := 30;
      elsif Date.M = 2 and Check_Leap(Date) = True Then
	 Date.D := 29;
      elsif Date.M = 2 and Check_Leap(Date) = False then
	 Date.D := 28;
      else
	 Date.D := 31;
      end if;
      
   end Last_Day_Of_month;
   
   --Underprogram Prev_date
   function Previous_Date (Date : in Date_Type) return Date_Type is
      Prev : Date_Type; 
   begin
      prev := date;
      
      prev.D := prev.D -1;
      if Check_day(prev) = True then
	 return prev;
      else prev := date;
      end if;
      
      prev.M := prev.M -1;
      Last_Day_Of_Month(Prev);
      if Check_Month(prev) = True then
       	 return prev;
      else 
       	 prev := Date;
      end if;
      
      Prev.Y := Prev.Y -1;
      Prev.M := 12;
      Prev.D := 31;
      
      return prev;
      
   end Previous_Date;
   
   --Underprogrammet = som kontrollerar om datumen är lika.
   function "=" (Left, Right : in Date_Type) return Boolean is
   begin
      
      if Left.Y = Right.Y and Left.M = Right.M and Left.D = Right.d then
	 return true;
      else 
	 return false;
      end if;
      
   end "=";
   
   --Om värdet inte hittas i loopen betyder det att värdet är större än det första.
   function "<" (Left, Right : in Date_Type) return Boolean is
      min_Date : Date_Type;
      Test : Date_Type;
   begin
      min_Date.Y := 1535; min_Date.M := 1; min_Date.D :=1;
      Test := Right;
      while Test /= min_Date loop
	 
	 Test := Previous_Date(Test);
	 
	 if Left = Test then
	    return True;
	 end if;
      end loop;
      return False;
   end "<"; 
   
   --Underprogrammet ">" som svarar ja eller nej beroende på vad ovanstående funktioner säger. bra tips av assistent.
   function ">" (Left, right : in Date_Type) return boolean is
      
   begin
      if (Left < Right) = false and (Left = Right) = False then
	 return True;
      else 
	 return False;
      end if;
      
   end ">";
   
end  Date_Package;
