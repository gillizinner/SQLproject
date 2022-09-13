create or replace function checkIFordered(orderId in number,memberPhone in number,currentMealName in varchar2) return boolean is
  FunctionResult boolean:=false;
  -- local variables here
  ifUpdate boolean:=false;
   mealName varchar2(30);
   previousOrder number:=0;
  --cursor,all the meals from this order
  cursor nameOfMeals is
  select distinct nameOfMeal 
  from orderDetailes NATURAL JOIN payment 
  where numOfOrder=orderId;
  --cursorItem 
  current_item nameOfMeals%rowtype;
begin
    mealName:=currentMealName;
    dbms_output.put_line('current meal is '||mealName);
    select numOfOrder into previousOrder
    from orderDetailes NATURAL JOIN payment
    where nameOfMeal=mealName and not(numOfOrder=orderId) and customerPhone=memberPhone
    fetch first row only;
  
    ifUpdate:=true;
  dbms_output.put_line('previous order:'||previousOrder);
  dbms_output.put_line('current meal was ordered before '||mealName); --need end if;--if ordered this before-update
    if(ifUpdate) then
    dbms_output.put_line('updated meal '||mealName);
    end if;
   FunctionResult:=ifUpdate;
  return(FunctionResult);
  exception
    when no_data_found then dbms_output.put_line('No updates'); return FunctionResult;
end checkIFordered;
/
