program FinanceCalc;
var
  principal, rate, total: real;
begin
  principal := 9000;
  rate := 0.07;
  total := principal + (principal * rate);
  writeln(total);
end.
