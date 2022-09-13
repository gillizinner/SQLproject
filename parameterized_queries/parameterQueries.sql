--what precent of the customers pay in each payment method between selected dates
select distinct paymentMethod,countSpesificMethod,CAST(countSpesificMethod/total AS FLOAT)*100 as Precent
from(select *
     from(SELECT paymentMethod, COUNT(paymentMethod) AS countSpesificMethod--how much of each method on selected dates
          FROM payment NATURAL JOIN orderOfMeal
          where dateOfOrder between to_date(&< name=" d_from " type="string">,'dd/mm/yyyy') and to_date(&< name=" d_to " type="string">,'dd/mm/yyyy')
          GROUP BY paymentMethod) A
          ,(SELECT 'SUM' pm, COUNT(paymentMethod) as total--total of selected dates
                                           FROM payment NATURAL JOIN orderOfMeal
          where dateOfOrder between to_date(&< name=" d_from " type="string">,'dd/mm/yyyy') and to_date(&< name=" d_to " type="string">,'dd/mm/yyyy'))D);
          
--what are the profits on selected months
select month_descr,profitPerMonth
from(select month_id,SUM(profitPerMeal) as profitPerMonth
     from(select month_id,nameOfMeal,sumOfQuantity,price,price*sumOfQuantity as profitPerMeal
          from(select month_id,nameOfMeal,sum(quantity) as sumOfQuantity
               from(select distinct extract(month from dateOfOrder) as month_id, dateOfOrder 
                    from orderOfMeal order by month_id)
               NATURAL JOIN Mealoforder
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
where month_id in (&<name="Month" list="1,JANUARY,2,FEBRUARY,3,MARCH,4,APRIL,5,MAY,6,JUNE,7,JULY,8,AUGUST,9,SEPTEMBER,10,OCTOBER,11,NOVEMBER,12,DECEMBER" description="true" multiselect="true">);
--order by month_id;

--display the costumers who ordered the most ordered by selected field
SELECT customerPhone,email,orderCount
FROM(SELECT customerPhone,COUNT(distinct numOfOrder) AS orderCount--returns for each customer his/hers numOfOrders,count(distinct numOfOrder) because there are multiple payments per customer per order
                  FROM payment NATURAL JOIN orderofmeal --matches the numOfOrder attribute in order to see what orders each customer has
                  group by customerPhone) JOIN clubMember on  customerPhone=phoneNumber
WHERE orderCount=(SELECT MAX(y.orderCount)
                  FROM (SELECT customerPhone,COUNT(distinct numOfOrder) AS orderCount
                  FROM payment NATURAL JOIN orderofmeal --matches the numOfOrder attribute
                  group by customerPhone) y)
&<name="order by" list="firstName,lastName,phoneNumber" required="true" prefix=" order by " suffix=" asc"> ;


--meals ordered by sum of quantity
select nameOfMeal,sum(quantity) as SumOFQuantity
from(select *
     from(select nameOfMeal,quantity
          from meal natural join Mealoforder) 
     UNION ALL 
     (select nameOfMeal,NVL(quantity,0)
      from meal natural left outer join Mealoforder
      where quantity is null))
group by nameOfMeal
order by SumOFQuantity &<name="order by" checkbox="desc">;--if i check-first option,else-secong option

          
