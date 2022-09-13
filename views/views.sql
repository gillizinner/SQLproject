--a view for the waiters, return all the reservations (orders) for today
create view mealsResForToday as
select *
from waiter NATURAL JOIN orderOfMeal NATURAL JOIN mealOfOrder NATURAL JOIN meal NATURAL LEFT OUTER JOIN payment
where extract(day from dateOfOrder)= extract(day from CURRENT_DATE) and 
      extract(month from dateOfOrder)= extract(month from CURRENT_DATE) and
      extract(year from dateOfOrder)= extract(year from CURRENT_DATE) and paymentMethod is null;
      
--returns for the waiters meals reservation detailes for meals which can't be served- in order to inform the costumer
select numOfOrder,IdOfWaiter,shift,nameOfMeal,typeOfMeal,available
from mealsResForToday
where (typeOfMeal='BreakFast' and (shift='Noon-afternoon' or shift='Evening' )) or available='F';

--returns all the meals that are cooked and ready to be served
select numOfOrder,IdOfWaiter,nameOfMeal,quantity
from mealsResForToday
where isCooked='T' and isServed='F';

select *
from mealsResForToday;


--update
update mealsResForToday m
set isServed='T'
where isCooked='T';
commit;

--delete
delete from mealsResForToday m
where (typeOfMeal='BreakFast' and (shift='Noon-afternoon' or shift='Evening' )) or available='F';
commit;

--deleteting the view
drop view mealsResForToday;


--a view for the restaurant management
create view clubMemberInfo as
select distinct firstName,lastName,city,dateOfRenewMembership,email,points
from clubMember NATURAL JOIN payment NATURAL JOIN orderOfMeal
where customerPhone=phoneNumber;

--the resturaunt wants to open an aditional branch, and wants to know how many orders are from each city
select city,count(*) as countOfOrders
     from clubMemberInfo
     group by city;
     
--the resturaunt management wants to know who are the clubmembers that didn't renew their membership for over than 5 years ago
select distinct firstName, lastName,dateOfRenewMembership, email
from clubMemberInfo
where (extract(year from CURRENT_DATE)-extract(year from dateOfRenewMembership))>5;
--


select *
from clubMemberInfo;

update clubMemberInfo c
set points=points+2
where extract(year from dateOfRenewMembership)=2020;
commit;

delete from clubMemberInfo
where extract(year from dateOfRenewMembership)<2015;--meals in decreasing order by sum of quantity5;
commit;

drop view clubMemberInfo;

