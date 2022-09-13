create or replace procedure informAllergens(orderId in number, sensitivity in varchar2) is            
  foundOrderId number:=0;
  flag boolean:=false;
  --cursor
  cursor orderOfDetailes is 
  select *
  from orderDetailes NATURAL JOIN meal
  where numOfOrder=orderId;
  --cursor current item
  currentItem orderOfDetailes%rowtype;
  --exceptions
  inputError1 exception;
  
begin
  if(not(sensitivity='Lactose' or sensitivity='Gluten' or sensitivity='Peanuts' or sensitivity='Gluten,Lactose'))
  then raise inputError1; end if;
  select distinct numOfOrder into foundOrderId from orderDetailes where numOfOrder=orderId;
  for currentItem in orderOfDetailes
    loop
      if(currentItem.Allergens=sensitivity) 
      then 
        flag:=true;
        dbms_output.put_line('The meal: '||currentItem.Nameofmeal||' which you ordered contains the allergens: '||currentItem.Allergens);
        dbms_output.put_line('The system will now remove this meal from your order');
        delete from orderDetailes where nameOfMeal=currentItem.Nameofmeal and numOfOrder=currentItem.Numoforder; commit; 
      end if;
    end loop;
  if(flag=false) then dbms_output.put_line('The meals you ordered contain no allergens.'); end if;
  exception
    when inputError1 then dbms_output.put_line('Sorry, there is not such a sensitivity in our system.');
    when no_data_found then dbms_output.put_line('Sorry, there is no such order in our db.');
end informAllergens;
/
