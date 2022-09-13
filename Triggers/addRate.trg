create or replace trigger addRate
  before insert                                                                             
  on payment 
  for each row
declare
pragma autonomous_transaction;
  -- local variables here
  ifUpdate boolean:=false;
   mealName varchar2(30);
   previousOrder number;
  --cursor
  cursor nameOfMeals is
  select distinct nameOfMeal 
  from orderDetailes NATURAL JOIN payment 
  where numOfOrder=:new.numoforder;
  --cursorItem 
  current_item nameOfMeals%rowtype;
begin
  for current_item in nameOfMeals
    loop
    mealName:=current_item.nameOfMeal;
    --ifUpdate:=checkIFordered(orderid => :new.numoforder,memberphone => :new.customerphone);
    ifUpdate:=checkIFordered(:new.numoforder,:new.customerphone,mealName);
    if(ifUpdate=true) then
    update meal set rate=rate+1 where nameOfMeal=mealName and rate<5; commit;
    end if;
   end loop;
end addRate;
/
