select nameOfIngredient, priceOfIngredient
from ingredient
where typeOfIngredient='drinks'
order by priceOfIngredient;

select firstName,lastName
from Clubmember NATURAL JOIN payment NATURAL JOIN orderOfMeal
where customerPhone=phoneNumber and extract(month from dateOfOrder)=8;

select w1.firstname,w1.lastName,w2.firstname,w2.lastName,w1.shift
from waiter w1, waiter w2
where w1.idOfWaiter<>w2.idOfWaiter and w1.shift=w2.shift
order by w1.shift;

select count(*) as numOfOrders
from(select *
     from Orderofmeal
     where extract(year from dateOfOrder)=2017);

select rate, nameOfMeal    
from meal
group by rate, nameOfMeal having rate>=3
order by nameOfMeal;


select m1.nameOfMeal,m1.price
from meal m1
where NOT EXISTS(select * 
                 from meal m2
                 where m1.price=m2.price and price< any(select price from meal));
                 
select firstName,lastName                
from waiter 
where positionOfWaiter='hazzait 1 ramat gan' and shift='Morning'
UNION
select firstName,lastName                
from chef 
where positionOfChef='hazzait 1 ramat gan' and shift='Morning';


select firstName,lastName
from(select idOfWaiter,count(*) as numOfOrders
     from Orderofmeal NATURAL JOIN waiter
     where shift<>'Morning'
     group by idOfWaiter) NATURAL JOIN waiter
where numOfOrders>1 ;






