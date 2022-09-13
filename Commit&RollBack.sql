--example #1
select * from meal;
select * from chef;

insert into chef 
values('Ruthi','Brodo','Evening',207123890,21);
commit;
insert into chef 
values('Jeki','Azulay','Noon-afternoon',209411123,10);

update meal m
set price=price*0.9
where typeOfMeal='Desert';
rollback;

--example #2
select * from waiter;
select * from meal;


insert into meal(nameOfMeal,price,typeOfMeal)  
values('Ice Coffee',19,'Drink');

delete from waiter
where IdOfWaiter=308478098 ; 
Savepoint  ourPoint;

insert into meal(nameOfMeal,price,typeOfMeal)  
values('tuna sandwich',23,'Opening');

rollback to ourPoint;

--example #3
select * from meal;
insert into meal(nameOfMeal,price,typeOfMeal)  
values('Beet Nioki',44,'Main');
insert into meal(nameOfMeal,price,typeOfMeal)  
values('Garlic Bread',27,'Opening');
commit;
insert into meal(nameOfMeal,price,typeOfMeal)  
values('Milkshake',24,'Drink');
rollback;
insert into meal(nameOfMeal,price,typeOfMeal)  
values('Veggie Hamburger',48,'Main');
insert into meal(nameOfMeal,price,typeOfMeal)  
values('Fruit Shake',21,'Drink');
insert into meal(nameOfMeal,price,typeOfMeal)  
values('Chips',32,'Opening');
commit;


