


--get a raise for the waiters who helped the restaurant to earn 250$ and above
update waiter w
set salary=salary+100
where 250<(select total
          from(select IdOfWaiter,sum(totalPerMeal) as total
               from(select IdOfWaiter,nameOfMeal,sumOfQuantity*price as totalPerMeal
                    from( select IdOfWaiter,nameOfMeal,sumOfQuantity,price
                          from(select IdOfWaiter,nameOfMeal,sum(quantity) as sumOfQuantity
                               from waiter natural join OrderofMeal natural join orderDetailes
                                group by IdOfWaiter,nameOfMeal) natural join meal)
                          order by IdOfWaiter)
              group by IdOfWaiter)
          where w.IdOfWaiter=IdOfWaiter);
commit;
select * from waiter;
--get a raise for the waiters who works on the bussiest shift
update waiter w
set salary=salary+80
where w.shift in(select shift
                 from(select max(numOfOrders) as maxNumOfOrders
                      from(select shift, count(*) as numOfOrders
                           from waiter NATURAL JOIN orderOfMeal
                           group by shift)) 
                     NATURAL JOIN 
                    (select shift, count(*) as numOfOrders
                    from waiter NATURAL JOIN orderOfMeal
                    group by shift)
                 where maxNumOfOrders=numOfOrders);
commit;
select * from waiter;
---------end




                 
              
