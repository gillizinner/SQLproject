--renaming table mealOfOrder                
ALTER TABLE Mealoforder
  RENAME TO orderDetailes;
  
select * from orderDetailes;

--adding the column 'sensitivity' to the table meal
ALTER TABLE meal
  ADD sensitivity VARCHAR2(30) DEFAULT 'None';
select * from meal;
                                                          
--renaming the column sensitivity to be called allergens        
ALTER TABLE meal
  RENAME COLUMN sensitivity TO allergens;
select * from meal;   

--checking constraint
ALTER TABLE meal
ADD CONSTRAINT check_rating_range
  CHECK (rate <= 5 and rate >= 0);

insert into meal(nameOfMeal,price,typeOfMeal,rate) 
values('Brownies',35,'Desert',7);
commit;

--disable the constraint we created
ALTER TABLE meal
DISABLE CONSTRAINT check_rating_range;

insert into meal(nameOfMeal,price,typeOfMeal,rate) 
values('Brownies',35,'Desert',7);
commit;
select * from meal; 

--enable the constraint we disabled
ALTER TABLE meal
ENABLE CONSTRAINT check_rating_range;

insert into meal(nameOfMeal,price,typeOfMeal,rate) 
values('Nachos',35,'Desert',7);
commit;

--drop column rate from waiter
select * from waiter;

ALTER TABLE waiter
  DROP COLUMN rate;
  
select * from waiter;

--modify the column rate in th table meal
ALTER TABLE meal
  MODIFY rate NUMBER(1) DEFAULT 1;
  







