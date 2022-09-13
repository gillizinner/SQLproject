--The customers who ordered the most
SELECT customerPhone,email,orderCount
FROM(SELECT customerPhone,COUNT(distinct numOfOrder) AS orderCount--returns for each customer his/hers numOfOrders,count(distinct numOfOrder) because there are multiple payments per customer per order
                  FROM payment NATURAL JOIN orderofmeal --matches the numOfOrder attribute in order to see what orders each customer has
                  group by customerPhone) JOIN clubMember on  customerPhone=phoneNumber
WHERE orderCount=(SELECT MAX(y.orderCount)
                  FROM (SELECT customerPhone,COUNT(distinct numOfOrder) AS orderCount
                  FROM payment NATURAL JOIN orderofmeal --matches the numOfOrder attribute
                  group by customerPhone) y);
                  
                  

--meals in decreasing order by sum of quantity
select nameOfMeal,sum(quantity) as SumOFQuantity
from(select *
     from(select nameOfMeal,quantity
          from meal natural join Orderdetailes) 
     UNION ALL 
     (select nameOfMeal,NVL(quantity,0)
      from meal natural left outer join Orderdetailes
      where quantity is null))
group by nameOfMeal
order by SumOFQuantity DESC;

--the emails of all the club members who have birthday this month
select firstName,lastName,email
from clubmember 
where extract(month from dateOfBirth) =  extract(month from CURRENT_DATE);     


--the orders each waiter has which hasnt been paid yet for today
select IdOfWaiter,numOfOrder,dateOfOrder,timeOfOrder
from Orderofmeal natural left outer join payment 
where extract(month from dateOfOrder) =  extract(month from CURRENT_DATE) 
                     and extract(day from dateOfOrder) =  extract(day from CURRENT_DATE) 
                     and extract(year from dateOfOrder) =  extract(year from CURRENT_DATE) and paymentMethod is null; 


--all clubmembers who havent ordered in the restaurant yet or ordered last time along time ago
select *
from Clubmember c
where c.phoneNumber not in(select customerPhone
                               from payment) or to_date('01-01-2019','dd-mm-yyyy')>  (select maxDateOfOrder --the last time this customer was in the resturaunt
                                                                                     from(select customerPhone,max(dateOfOrder) as maxDateOfOrder
                                                                                          from orderOfMeal NATURAL JOIN payment
                                                                                     --where c.customerPhone=customerPhone
                                                                                          group by customerPhone)
                                                                                      where c.phonenumber=customerPhone) ;


                 

--what precent of the customers pay in each payment method
select paymentMethod,countSpesificMethod,CAST(countSpesificMethod/total AS FLOAT)*100 as Precent
from(select *
     from(SELECT paymentMethod, COUNT(paymentMethod) AS countSpesificMethod
          FROM payment
          GROUP BY paymentMethod) A
          UNION ALL
          select *
          from(SELECT 'SUM' paymentMethod, COUNT(paymentMethod)
                                           FROM payment) B)C ,(SELECT 'SUM' pm, COUNT(paymentMethod) as total
                                           FROM payment)D
where C.paymentMethod !='SUM';

 


-----displaying the best waiter for each month

select month_descr,IdOfWaiter,firstName,lastName
from(select month_id,MAX(numOfOrders) as maxOrdersPerMonth
     from(select month_id,IdOfWaiter,count(*) as numOfOrders
          from(select *  
               from(select distinct extract(month from dateOfOrder) as month_id 
                    from orderOfMeal order by month_id),orderOfMeal where month_id=extract(month from dateOfOrder))
           group by month_id,IdOfWaiter)
     group by month_id) 
NATURAL JOIN 
(select month_id,IdOfWaiter,count(*) as numOfOrders
     from(select *  
          from(select distinct extract(month from dateOfOrder) as month_id 
               from orderOfMeal order by month_id),orderOfMeal where month_id=extract(month from dateOfOrder))
     group by month_id,IdOfWaiter)
NATURAL JOIN
(select * from(select to_char(add_months(to_date('01/01/1000', 'DD/MM/RRRR'), ind.l-1), 'MONTH') as month_descr,
                ind.l as month_id
                from dual descr,
           (select l
            from (select level l 
                  from dual 
                connect by level <= 12
               )
             ) ind 
      order by 2))
NATURAL JOIN waiter    
where  numOfOrders = maxOrdersPerMonth
order by month_id;


--what are the profits on each month
select month_descr,profitPerMonth
from(select month_id,SUM(profitPerMeal) as profitPerMonth
     from(select month_id,nameOfMeal,sumOfQuantity,price,price*sumOfQuantity as profitPerMeal
          from(select month_id,nameOfMeal,sum(quantity) as sumOfQuantity
               from(select distinct extract(month from dateOfOrder) as month_id, dateOfOrder 
                    from orderOfMeal order by month_id)
               NATURAL JOIN Orderdetailes
               NATURAL JOIN orderOfMeal
               group by month_id,nameOfMeal)
          NATURAL JOIN meal)
     group by month_id)
NATURAL JOIN 
(select * from(select to_char(add_months(to_date('01/01/1000', 'DD/MM/RRRR'), ind.l-1), 'MONTH') as month_descr,
                ind.l as month_id
                from dual descr,
           (select l
            from (select level l 
                  from dual 
                connect by level <= 12
               )
             ) ind 
      order by 2))
order by month_id;

