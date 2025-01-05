```ada
function Check_Range(Num : Integer) return Boolean is
begin
  return Num > 10;
end Check_Range;

with Ada.Text_IO; use Ada.Text_IO;
procedure Main is
   Num : Integer;
   Result : Boolean;
   Input_Status : Ada.Text_IO.Status;
begin
   Put_Line("Enter an Integer:");
   Get(Num, Input_Status);
   if Input_Status = Ada.Text_IO.Status_Error then
      Put_Line("Invalid input. Please enter an integer.");
      return;
   elsif Input_Status = Ada.Text_IO.End_Of_File then
      Put_Line("End of file encountered.");
      return;
   end if;
   Result := Check_Range(Num);
   if Result then
      Put_Line("Number is greater than 10");
   else
      Put_Line("Number is not greater than 10");
   end if;
exception
   when others =>
      Put_Line("An unexpected error occurred.");
      -- Log the error for debugging purposes
end Main;
```