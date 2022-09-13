create or replace trigger addPoints
  after insert
  on payment 
  for each row
declare
  pragma autonomous_transaction;
  -- local variables here
  totalPrice number:=0;
  --totalPrice2 number:=0;
  
begin
  totalPrice:=totalcalc(orderid => :new.numoforder,memberphone => :new.customerphone);
   if(totalPrice>=50) then 
   update clubMember set points=points+20 where phoneNumber=:new.customerphone; commit;
   end if;
end addPoints;
/
