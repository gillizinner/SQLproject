CREATE TABLE branch
(
  cosher VARCHAR2(20) CHECK(cosher='Yes' or cosher='No') NOT NULL,
  PhoneNumberBranch NUMBER NOT NULL,
  position VARCHAR2(20) NOT NULL,
  hoursOpen VARCHAR2(20) NOT NULL,
  hoursClosed VARCHAR2(20) NOT NULL,
  PRIMARY KEY (position)
);
CREATE TABLE ingredient
(
  priceOfIngredient NUMBER(3) NOT NULL,
  typeOfIngredient VARCHAR2(20) CHECK(typeOfIngredient='vegetables' or typeOfIngredient='fruits' or typeOfIngredient='drinks' or typeOfIngredient='dry') NOT NULL,
  nameOfIngredient VARCHAR2(30) NOT NULL,
  PRIMARY KEY (nameOfIngredient)
);

CREATE TABLE ingredientOfMeal
(
  Amount INT NOT NULL,
  nameOfMeal VARCHAR2(30) NOT NULL,
  nameOfIngredient VARCHAR2(30) NOT NULL,
  PRIMARY KEY (nameOfMeal, nameOfIngredient),
  FOREIGN KEY (nameOfMeal) REFERENCES meal(nameOfMeal),
  FOREIGN KEY (nameOfIngredient) REFERENCES ingredient(nameOfIngredient)
);

ALTER TABLE Orderofmeal
  ADD NumOfTable INT DEFAULT 0;
  
ALTER TABLE Orderofmeal
  ADD notes VARCHAR2(50) DEFAULT 'None';

ALTER TABLE meal
  ADD descriptionOfMeal VARCHAR2(50) DEFAULT 'None';  
  
ALTER TABLE chef
  ADD positionOfChef VARCHAR2(20); 
  
ALTER TABLE waiter
  ADD positionOfWaiter VARCHAR2(20); 
  
--ALTER TABLE chef
  --DROP COLUMN position;  
 

ALTER TABLE chef
ADD CONSTRAINT fk_chefBranch
  FOREIGN KEY (positionOfChef)
  REFERENCES branch(position);
  
  
ALTER TABLE waiter
ADD CONSTRAINT fk_waiterBranch
  FOREIGN KEY (positionOfWaiter)
  REFERENCES branch(position);
