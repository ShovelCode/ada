with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

function Concatenate(String1, String2 : Unbounded_String) return Unbounded_String is
begin
    return String1 & String2;
end Concatenate;
