package Email with SPARK_Mode is

   type Email_Address_Type is private;
   No_Email : constant Email_Address_Type;

private

   --  emails are at most 256 characters long, see
   --  https://stackoverflow.com/questions/386294/what-is-the-maximum-length-of-a-valid-email-address
   type Length_Type is range 0 .. 256;

   type Email_Address_Buffer_Type is array (Length_Type range <>) of Character;

   type Email_Address_Var_Type (Len : Length_Type := 20) is record
      Ct : Email_Address_Buffer_Type (1 .. Len);
   end record;

   type Email_Address_Type is record
      Ct : Email_Address_Var_Type;
   end record;

   No_Email : constant Email_Address_Type :=
     (Ct => (Len => 0, Ct => (1 .. 0 => ' ')));

end Email;
