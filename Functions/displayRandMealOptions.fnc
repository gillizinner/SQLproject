create or replace function displayRandMealOptions(inputPrice in number) return sys_refcursor is
  FunctionResult sys_refcursor;
  Openingmeal meal%rowtype;
  Mainmeal meal%rowtype;
  Desertmeal meal%rowtype;
  drink meal%rowtype;
  exitflag BOOLEAN:=false;
  minPriceMain number;
  minPriceOpening number;
  minPriceDrink number;
  minPriceDesert number;
  cantAfford exception;
begin
     OPEN FunctionResult FOR
       select *
       from meal 
       where 1=2;
     select Min(price) as minPrice into minPriceMain from meal where typeOfMeal='Main';
     select Min(price) as minPrice into minPriceOpening from meal where typeOfMeal='Opening';
     select Min(price) as minPrice into minPriceDesert from meal where typeOfMeal='Desert';
     select Min(price) as minPrice into minPriceDrink from meal where typeOfMeal='Drink';
     --checking if can afford any meal
     if(minPriceMain+minPriceOpening+minPriceDesert+minPriceDrink>inputPrice) then raise cantAfford; end if;
   --selecting random meals in each type of meal
     loop
     select * into Openingmeal from meal where typeOfMeal='Opening' order by dbms_random.value()                            
     fetch first row only;
     select * into Mainmeal from meal where typeOfMeal='Main' order by dbms_random.value()
     fetch first row only;
     select * into Desertmeal from meal where typeOfMeal='Desert' order by dbms_random.value()
     fetch first row only;
     select * into drink from meal where typeOfMeal='Drink' order by dbms_random.value()
     fetch first row only;
     --checking whether the customer can afford the meals selected
     if(Openingmeal.Price+Mainmeal.Price+Desertmeal.Price+drink.price>inputPrice) then exitflag:=false; else exitflag:=true;
     end if;
     exit when exitflag=true;
     end loop;
     
     OPEN FunctionResult FOR
       select *
       from meal  
       where nameOfMeal=Openingmeal.Nameofmeal or nameOfMeal=Mainmeal.Nameofmeal or nameOfMeal=Desertmeal.Nameofmeal or nameOfMeal=drink.nameofmeal ;
     return FunctionResult;
     exception
       when cantAfford then dbms_output.put_line('Sorry we could not find a meal for you.'); return(FunctionResult);
  --need return(FunctionResult);
end displayRandMealOptions;
/
