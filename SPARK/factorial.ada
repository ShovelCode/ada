package Factorial_Pkg is
   type Natural_Number is range 0 .. 100;

   function Factorial (N : Natural_Number) return Natural_Number;
end Factorial_Pkg;

package body Factorial_Pkg is
   function Factorial (N : Natural_Number) return Natural_Number is
      Result : Natural_Number := 1;
   begin
      for I in 1 .. N loop
         Result := Result * I;
      end loop;
      return Result;
   end Factorial;
end Factorial_Pkg;
