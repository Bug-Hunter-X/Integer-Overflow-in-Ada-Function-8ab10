```ada
function Add_Numbers (X : Integer; Y : Integer) return Integer is
begin
  return X + Y;
end Add_Numbers;

procedure Test_Add_Numbers is
   Result : Integer;
begin
   Result := Add_Numbers(5, 10);
   Ada.Text_IO.Put_Line("Result is: " & Integer'Image(Result));
end Test_Add_Numbers;
```
This code has a potential error related to integer overflow. If the values of X and Y are large enough, their sum could exceed the maximum value that can be stored in an Integer type, leading to an overflow. This could result in unexpected or incorrect results. In Ada, this error is not necessarily handled explicitly like in some other languages, so extra care is required when working with large integer values.