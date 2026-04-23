with Ada.Text_IO; use Ada.Text_IO;
procedure Control is
   Value : Float := 12.5;
   Result : Float;
begin
   if Value > 10.0 then
      Result := Value * 1.25;
   else
      Result := Value;
   end if;
   Put_Line(Float'Image(Result));
end Control;
