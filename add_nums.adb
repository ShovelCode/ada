with Ada.Text_IO;

procedure Main is
A, B, C : Integer;
begin
   A := Integer'Value (Ada.Text_IO.Get_Line);
   B := Integer'Value (Ada.Text_IO.Get_Line);
   C := A + B;
   
   Ada.Text_IO.Put_Line(Integer'Image (C));
end Main;
