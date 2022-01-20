With Ada.Text_IO;    use Ada.Text_Io;
with Ada.Integer_Text_Io; use Ada.Integer_Text_IO;		       
		       
procedure Summa is
   
   procedure Get_Heltal (I1, I2, I3, I4, I5 : out Integer) is
      
   begin
      
   Put("Skriv in fem heltal: ");   
   Get(I1);
   Get(I2);
   Get(I3);
   Get(I4);
   Get(I5);
      
   end Get_Heltal;   
   
   function Get_Sum (I1, I2, I3, I4, I5 : in Integer) return Integer is
      
      Out_Sum : Integer;
      
   begin
      
      Out_Sum := I1 + I2 + I3 + I4 + I5;
      return Out_Sum;
      
   end Get_Sum;
     
     procedure Display_Sum(Sum : in integer) is 
     
     begin
	Put("summan blir: ");
	Put(Sum, Width => 1);
     end Display_Sum;
   
   
     I1, I2, I3, I4, I5, sum : Integer; 

begin
   
Get_Heltal(I1, I2, I3, I4, I5);   

Sum := Get_Sum(I1, I2, I3, I4, I5);

Display_Sum(Sum);
   
end Summa;
