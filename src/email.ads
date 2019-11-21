package Email with SPARK_Mode is

   type Email_Address_Type is private;

   function Mk_Email (S : String) return Email_Address_Type;
   function Get_Email_String (X : Email_Address_Type) return String;

   No_Email : constant Email_Address_Type;

private

  type Email_Address_Type is new Natural;

  No_Email : constant Email_Address_Type := 0;

end Email;
