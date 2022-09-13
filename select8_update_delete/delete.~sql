--delete the meal which has been ordered the least of times


delete from meal
where nameOfMeal in (select nameOfMeal
                     from(select nameOfMeal,sum(quantity) AS sumOfQuantity
                          from meal natural left outer join Mealoforder  
                          group by nameOfMeal
                          order by sumOfQuantity DESC)
                     where sumOfQuantity=(select MIN(sumOfQuantity)
                                          from(select sum(quantity) AS sumOfQuantity
                                               from meal natural left outer join Mealoforder  
                                               group by nameOfMeal
                                               order by sumOfQuantity DESC)));          
commit; 



--delete the orders records till 2010

delete from Orderofmeal
where extract(year from dateOfOrder)<=2010;
commit;






