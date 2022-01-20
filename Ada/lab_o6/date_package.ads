
package Date_Package is
   
   Format_Error : exception;
   Year_Error : exception;
   Month_Error: exception;
   Day_Error : exception;
   
   type Date_Type is private;
   
   procedure Get (date : out Date_Type);
   procedure Put (date : in Date_Type);
   
   function Next_Date (date : in Date_Type) return Date_type;
   function Previous_Date (date : in Date_Type) return Date_type;
   
   function ">" (Left, Right : in Date_Type) return Boolean;
   function "<" (Left, Right : in Date_Type) return Boolean;
   function "=" (Left, Right : in Date_Type) return Boolean;
   
   
private
   
   type Date_Type is
      record
	 Y,M,D : Integer;
      end record;
   
end Date_Package;
