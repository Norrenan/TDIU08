with Ada.Text_Io; use Ada.Text_Io;
with Ada.Integer_Text_Io; use Ada.Integer_Text_Io;
with Ada.Float_Text_Io; use Ada.Float_Text_Io;


procedure O2 is
-----------------------------------------------------------------   
   function "+" (H : in Integer; F : in Float) return Float is
   begin
      
      --  if (Float(H) < F) then
      --  	 return (F-Float(H));
      --  else
      --  	 return (Float(H)-F);
      --  end if;
      return Float(H)-F;
   end "+";
   
 ------------------------------------------------------------------- 
   
   procedure TestaOrd (S : in String; B : out Boolean) is
 
   begin
      
      if Character'pos(S(S'Last)) = 115 then
	 B := True;

      else 
	 B := False;
     
      end if;
      
      end TestaOrd;
------------------------------------------------------------------------   
      procedure TestaCh (Ch : in Character; B : out Boolean) is
	 
      begin
	 
	if Character'Pos(Ch) = 115 or Character'Pos(Ch) = 83 then
	   B := True;
	else
	   B := False;
	end if;   
	  
	 end TestaCh;
    
      
------------------------------------------------------------------------      
 Heltal : Integer;
   Flyttal : Float;
   S : String(1..5);
   Bool : Boolean; 
   Ch : Character;
begin
   
   Put("Mata in ett heltal och ett flyttal: ");  
   Get(Heltal);
   Get(Flyttal);
     Put("Differensen mellan dem är ");
    Put(Heltal + Flyttal,0,2,0);
     
     New_Line(2);

     Put("Skriv in ett 5 tecken långt engelskt substantiv: ");
     Get(S);
     Skip_Line;
     TestaOrd(S, Bool); 
     Put("Ordet ");
     
     if Bool = True then
     	Put(S);
     	Put(" var troligtvis i plural från början");
     else
     	S(5) := 's';
     	Put(S);
     	Put(" var troligtvis inte i plural från början");
     end if;
     New_Line(2);
     
     Put("Mata in ett tecken: ");
     Get(Ch);
     
     TestaCh(Ch, Bool);
     Put("Tecknet var ");
     if Bool = True then
	Put("sant");
     else
	Put("inte sant");
	end if;
end O2;
