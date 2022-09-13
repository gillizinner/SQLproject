update Orderofmeal
set dateOfOrder=add_months(dateOfOrder,12)
where dateOfOrder in( select dateOfOrder
                      from Orderofmeal
                      where dateOfOrder between to_date('01-01-2016','dd-mm-yyyy') and to_date('31-12-2016','dd-mm-yyyy'));
commit;

update meal
set price=price*2
where (select "avgNumOfOrders"
       from(select extract(month from sysdate)"month",avg(count(numOfOrder))"avgNumOfOrders"
            from orderOfMeal
            group by extract(month from dateOfOrder)
            order by "avgNumOfOrders"))<
       (select "avgNumOfOrders"
       from(select extract(year from sysdate)"year",avg(count(numOfOrder))"avgNumOfOrders"
            from orderOfMeal
            group by extract(year from dateOfOrder)
            order by "avgNumOfOrders"));
            
commit;

update meal
set descriptionOfMeal='Very Delicious'
where rate>3;
commit;
