create or replace function totalCalc(orderId in number,memberPhone in number) return number is
  FunctionResult number:=0;
  totalPrice11 number:=0;
  totalPrice2 number:=0;
begin
  select sum(total) as s into totalPrice2
  from( select distinct nameOfmeal,price,quantity,price*quantity as total
        from payment NATURAL JOIN Orderdetailes NATURAL JOIN meal
        where numOfOrder=orderId and customerPhone=memberPhone);
  FunctionResult:=totalPrice2;
  return(FunctionResult);
end totalCalc;
/
