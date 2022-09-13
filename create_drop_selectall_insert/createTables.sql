CREATE TABLE meal
(
  nameOfMeal VARCHAR2(30) NOT NULL,
  price NUMBER(3) NOT NULL,
  typeOfMeal VARCHAR2(25) CHECK(typeOfMeal='Opening' or typeOfMeal='Main' or typeOfMeal='Desert' or typeOfMeal='BreakFast' or typeOfMeal='Drink') NOT NULL,
  rate NUMBER(1) DEFAULT 0 NOT NULL,
  available VARCHAR2(1) DEFAULT 'T' CHECK(available='T' or available='F'),
  PRIMARY KEY (nameOfMeal)
);

CREATE TABLE chef
(
  firstName VARCHAR2(25) NOT NULL,
  lastName VARCHAR2(25) NOT NULL,
  shift VARCHAR2(20) CHECK(shift='Morning' or shift='Noon-afternoon' or shift='Evening') NOT NULL,
  IdOfChef NUMBER(9) NOT NULL,
  experience NUMBER(2) NOT NULL,
  PRIMARY KEY (IdOfChef)
);

CREATE TABLE waiter
(
  firstName VARCHAR2(25) NOT NULL,
  lastName VARCHAR2(25) NOT NULL,
  IdOfWaiter NUMBER(9) NOT NULL,
  shift VARCHAR2(20) CHECK(shift='Morning' or shift='Noon-afternoon' or shift='Evening') NOT NULL,
  rate NUMBER(1)  DEFAULT 0 NOT NULL,
  salary FLOAT DEFAULT 6000 CHECK(salary>0) NOT NULL,
  PRIMARY KEY (IdOfWaiter)
);

CREATE TABLE orderOfMeal
(
  numOfOrder NUMBER(6) NOT NULL,
  timeOfOrder VARCHAR2(25) NOT NULL,
  dateOfOrder DATE  NOT NULL,
  IdOfWaiter NUMBER(9) NOT NULL,
  PRIMARY KEY (numOfOrder),
  FOREIGN KEY (IdOfWaiter) REFERENCES waiter(IdOfWaiter) on delete cascade
);

CREATE TABLE clubMember
(
  firstName VARCHAR2(25) NOT NULL,
  lastName VARCHAR2(25) NOT NULL,
  dateOfBirth DATE NOT NULL,
  dateOfRenewMembership DATE,
  points NUMBER(3) default 0 NOT NULL,
  street VARCHAR2(25) NOT NULL,
  city VARCHAR2(20) NOT NULL,
  numOfBuilding NUMBER(3) NOT NULL,
  email VARCHAR2(30) NOT NULL,
  phoneNumber NUMBER(10) NOT NULL,
  PRIMARY KEY (phoneNumber)
);

CREATE TABLE mealOfOrder
(
  quantity NUMBER(2) NOT NULL,
  nameOfMeal VARCHAR2(30) NOT NULL,
  numOfOrder NUMBER(6) NOT NULL,
  isServed VARCHAR2(30) DEFAULT 'F' CHECK(isServed='T' or isServed='F'),
  isCooked VARCHAR2(30) DEFAULT 'F' CHECK(isCooked='T' or isCooked='F'),
  PRIMARY KEY (nameOfMeal, numOfOrder),
  FOREIGN KEY (nameOfMeal) REFERENCES meal(nameOfMeal) on delete cascade,
  FOREIGN KEY (numOfOrder) REFERENCES orderOfMeal(numOfOrder) on delete cascade
);

CREATE TABLE mealOfChef
(
  nameOfMeal VARCHAR2(30) NOT NULL,
  IdOfChef NUMBER(9) NOT NULL,
  PRIMARY KEY (nameOfMeal, IdOfChef),
  FOREIGN KEY (nameOfMeal) REFERENCES meal(nameOfMeal) on delete cascade,
  FOREIGN KEY (IdOfChef) REFERENCES chef(IdOfChef) on delete cascade
);

CREATE TABLE payment
(
  paymentMethod VARCHAR2(25) CHECK(paymentMethod='Cash' or paymentMethod='Credit card' or paymentMethod='Gift card')  NOT NULL,
  customerPhone NUMBER(10) NOT NULL,
  numOfOrder NUMBER(6) NOT NULL, 
  PRIMARY KEY (customerPhone, numOfOrder,paymentMethod),
  FOREIGN KEY (numOfOrder) REFERENCES orderOfMeal(numOfOrder) on delete cascade,
  FOREIGN KEY (customerPhone) REFERENCES clubMember(phoneNumber) on delete cascade
  --FOREIGN KEY (customerPhone) REFERENCES phoneNumber(phoneNumber)
);

