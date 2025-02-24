```ada
function Add_Numbers (X : Integer; Y : Integer) return Integer is
   Result : Integer;
begin
   Result := X + Y;
   -- Check for overflow
   if (X > 0 and Y > 0 and Result < X) or (X < 0 and Y < 0 and Result > X) then
      raise Constraint_Error;
   end if;
   return Result;
exception
   when Constraint_Error =>
      Ada.Text_IO.Put_Line("Integer overflow occurred!");
      return 0; -- Or handle the error appropriately
end Add_Numbers;

procedure Test_Add_Numbers is
   Result : Integer;
begin
   Result := Add_Numbers(5, 10);
   Ada.Text_IO.Put_Line("Result is: " & Integer'Image(Result));
   -- Test for overflow
   begin
      Result := Add_Numbers(Integer'Last, 1);
   exception
      when Constraint_Error =>
         Ada.Text_IO.Put_Line("Overflow handled correctly.");
   end;
end Test_Add_Numbers;
```
This improved version uses exception handling to detect and handle potential integer overflows.  The `Constraint_Error` exception is raised if an overflow occurs.  More robust solutions might involve using a larger integer type (e.g., Long_Integer) or implementing custom overflow checks depending on the application's specific requirements.