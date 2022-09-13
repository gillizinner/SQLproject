insert into chef 
values('Chaim','Cohen','Morning',207123893,8);

insert into chef 
values('Michal','Ansky','Noon-afternoon',209489823,12);

insert into chef
values('Asaf','Granit','Evening',207523179,15);

insert into chef 
values('Karin','Goren','Evening',207536798,11);

insert into chef
values('Miki','Shemo','Morning',206123893,17);

insert into chef 
values('Aviva','Levi','Noon-afternoon',209623893,10);

insert into chef 
values('Estella','Nazdirov','Evening',209623894,10);

insert into chef 
values('Eyal','Shani','Morning',207893893,20);

insert into chef
values('Moshik','Rott','Noon-afternoon',201503190,17);

insert into chef
values('Yossi','Shitrit','Evening',206629293,14);

insert into waiter(firstName,lastName,IdOfWaiter,shift) 
values('Yosi','Levi',318534179,'Evening');

insert into waiter(firstName,lastName,IdOfWaiter,shift)
values('Noa','Friedman',318670279,'Morning');

insert into waiter(firstName,lastName,IdOfWaiter,shift)  
values('Shira','Cohen',208456194,'Noon-afternoon');

insert into waiter(firstName,lastName,IdOfWaiter,shift)
values('Yael','Katz',209148762,'Morning');

insert into waiter(firstName,lastName,IdOfWaiter,shift) 
values('Daniel','Fisher',318532411,'Noon-afternoon');

insert into waiter(firstName,lastName,IdOfWaiter,shift) 
values('Avi','Salam',209533674,'Evening');

insert into waiter(firstName,lastName,IdOfWaiter,shift) 
values('Moshe','Koffman',317564439,'Evening');

insert into waiter(firstName,lastName,IdOfWaiter,shift) 
values('Ariel','Lapidot',318674179,'Morning');

insert into waiter(firstName,lastName,IdOfWaiter,shift)                                                                            
values('Ayelet','Fox',318534154,'Noon-afternoon');

insert into waiter(firstName,lastName,IdOfWaiter,shift) 
values('Itamar','Eldar',318530279,'Evening');

insert into clubMember(firstName,lastName,dateOfBirth,points,street,city,Numofbuilding,Email,Phonenumber) 
values('Yonathan','Polak',to_date('12-11-1997','dd-mm-yyyy'),0,'Gotlieb','Bnei Brak','15','yPolak@gmail.com',0533142599);
commit;
insert into clubMember(firstName,lastName,dateOfBirth,Dateofrenewmembership,points,street,city,Numofbuilding,Email,Phonenumber)  
values('Rivka','Shnaps',to_date('04-03-1999','dd-mm-yyyy'),to_date('09-03-2018','dd-mm-yyyy'),0,'Hagefen','Ramat Gan','1','rivka100@gmail.com',0547692013);

insert into clubMember(firstName,lastName,dateOfBirth,Dateofrenewmembership,points,street,city,Numofbuilding,Email,Phonenumber)  
values('Lea','Goldberg',to_date('09-08-1950','dd-mm-yyyy'),to_date('08-08-2013','dd-mm-yyyy'),0,'Hertzel','Tel Aviv','7','LeaGold15@gmail.com',052666141);

insert into clubMember(firstName,lastName,dateOfBirth,Dateofrenewmembership,points,street,city,Numofbuilding,Email,Phonenumber) 
values('Benny','Brikman',to_date('22-04-2000','dd-mm-yyyy'),to_date('14-03-2016','dd-mm-yyyy'),0,'Bograshov','Tel Aviv','31','BennyBrikman@gmail.com',0546449566);

insert into clubMember(firstName,lastName,dateOfBirth,Dateofrenewmembership,points,street,city,Numofbuilding,Email,Phonenumber) 
values('Menachem','Bello',to_date('05-07-1972','dd-mm-yyyy'),to_date('02-08-2019','dd-mm-yyyy'),0,'Hertzog','Bnei Brak','38','BelloMenachem4@walla.com',0542038222);

insert into clubMember(firstName,lastName,dateOfBirth,Dateofrenewmembership,points,street,city,Numofbuilding,Email,Phonenumber) 
values('Snir','Siani',to_date('26-01-1980','dd-mm-yyyy'),to_date('13-06-2011','dd-mm-yyyy'),0,'Daniel Lifsheitz','Petach Tikva','24','SS1980@gmail.com',0506457837);

insert into clubMember(firstName,lastName,dateOfBirth,Dateofrenewmembership,points,street,city,Numofbuilding,Email,Phonenumber) 
values('Rami','Davidov',to_date('08-09-1994','dd-mm-yyyy'),to_date('05-12-2017','dd-mm-yyyy'),0,'Ishayau','Jerusalem','62','ramiDavidov100@gmail.com',0528881915);

insert into clubMember(firstName,lastName,dateOfBirth,Dateofrenewmembership,points,street,city,Numofbuilding,Email,Phonenumber)  
values('Odelya','Cohen',to_date('19-05-2000','dd-mm-yyyy'),to_date('07-02-2017','dd-mm-yyyy'),0,'Menucha Venachala','Rehovot','15','OdelyaCh20@gmail.com',0547339542);   

insert into clubMember(firstName,lastName,dateOfBirth,Dateofrenewmembership,points,street,city,Numofbuilding,Email,Phonenumber) 
values('Ella','Ziv',to_date('12-12-1996','dd-mm-yyyy'),to_date('01-01-2020','dd-mm-yyyy'),0,'Shivtei Israel','Beit Shemesh','53','EllaZ@gmail.com',0532415698);

insert into clubMember(firstName,lastName,dateOfBirth,Dateofrenewmembership,points,street,city,Numofbuilding,Email,Phonenumber)  
values('Gilli','Weiss',to_date('05-08-1999','dd-mm-yyyy'),to_date('18-08-2005','dd-mm-yyyy'),0,'Aaronson','Bnei Brak','3','Gilli53@gmail.com',0533142550);

insert into clubMember(firstName,lastName,dateOfBirth,Dateofrenewmembership,points,street,city,Numofbuilding,Email,Phonenumber)
values('Michael','Rabinovitch',to_date('26-04-1991','dd-mm-yyyy'),to_date('09-11-2019','dd-mm-yyyy'),0,'Alenbi','Tel Aviv','9','MRabino@gmail.com',0526791119);
commit;
insert into meal(nameOfMeal,price,typeOfMeal,rate) 
values('Pizza margarita',42,'Main',0);
commit;
insert into meal(nameOfMeal,price,typeOfMeal,rate)
values('Pizza napolitana',44,'Main',0);

insert into meal(nameOfMeal,price,typeOfMeal,rate)
values('Pizza Habait',42,'Main',0);

insert into meal(nameOfMeal,price,typeOfMeal,rate)  
values('Pizza gluten free',35,'Main',0);

insert into meal(nameOfMeal,price,typeOfMeal,rate)
values('Pizza vegan',47,'Main',0);

insert into meal (nameOfMeal,price,typeOfMeal,rate)
values('Pasta Patuchini',48,'Main',0);

insert into meal(nameOfMeal,price,typeOfMeal,rate) 
values('Pasta sweet potato ravioli',48,'Main',0);

insert into meal(nameOfMeal,price,typeOfMeal,rate)  
values('Pasta cheese ravioli',48,'Main',0);

insert into meal(nameOfMeal,price,typeOfMeal,rate) 
values('Pasta Nioki',48,'Main',0);

insert into meal(nameOfMeal,price,typeOfMeal,rate)  
values('Greek Salad',56,'Opening',0);

insert into meal(nameOfMeal,price,typeOfMeal,rate)
values('Chalumi',56,'Main',0);

insert into meal(nameOfMeal,price,typeOfMeal,rate) 
values('Waffles',45,'Desert',0);

insert into meal(nameOfMeal,price,typeOfMeal,rate)      
values('Suphle',42,'Desert',0);

insert into meal(nameOfMeal,price,typeOfMeal,rate) 
values('Cheese Cake',43,'Desert',0);

insert into meal(nameOfMeal,price,typeOfMeal,rate)  
values('Apple Pie',40,'Desert',0);

insert into meal(nameOfMeal,price,typeOfMeal,rate)  
values('French Crepe',39,'Desert',0);

insert into meal(nameOfMeal,price,typeOfMeal,rate)  
values('Shakshuka',52,'BreakFast',0);

insert into meal(nameOfMeal,price,typeOfMeal,rate)  
values('Omelet',28,'BreakFast',0);

insert into meal(nameOfMeal,price,typeOfMeal,rate)  
values('Eggs Benedict',33,'BreakFast',0);

insert into orderOfMeal  
values(123456,'11:50',to_date('16-12-2019','dd-mm-yyyy'),318670279);

insert into orderOfMeal  
values(123457,'18:05',to_date('22-09-2019','dd-mm-yyyy'),318670279);

insert into orderOfMeal  
values(123461,'21:50',to_date('21-04-2020','dd-mm-yyyy'),209533674);
commit;
insert into orderOfMeal  
values(123458,'17:30',to_date('12-11-2019','dd-mm-yyyy'),318532411);

insert into orderOfMeal  
values(123459,'12:23',to_date('30-04-2019','dd-mm-yyyy'),209148762);

insert into orderOfMeal  
values(123450,'14:37',to_date('05-07-2019','dd-mm-yyyy'),208456194);

insert into orderOfMeal  
values(123451,'18:09',to_date('01-01-2019','dd-mm-yyyy'),317564439);

insert into orderOfMeal  
values(123452,'21:45',to_date('19-03-2019','dd-mm-yyyy'),318534179);

insert into orderOfMeal 
values(123453,'19:44',to_date('08-02-2019','dd-mm-yyyy'),318534179);

insert into orderOfMeal 
values(123454,'16:02',to_date('22-08-2019','dd-mm-yyyy'),318532411);

insert into orderOfMeal  
values(123455,'11:50',to_date('16-12-2019','dd-mm-yyyy'),318670279);

insert into orderOfMeal 
values(123460,'13:50',to_date('06-04-2020','dd-mm-yyyy'),209148762);

insert into orderOfMeal
values(123462,'15:50',to_date('21-04-2020','dd-mm-yyyy'),209148762);
commit;

insert into orderOfMeal
values(123400,'10:24',to_date('28-07-2009','dd-mm-yyyy'),318534154);
commit;

insert into orderOfMeal
values(123463,'15:43',to_date('28-04-2020','dd-mm-yyyy'),208456194);
commit;

insert into orderOfMeal
values(123464,'12:17',to_date('28-04-2020','dd-mm-yyyy'),209148762);
commit;
insert into orderOfMeal
values(123465,'13:22',to_date('28-04-2020','dd-mm-yyyy'),318670279);
commit;

insert into orderOfMeal
values(123466,'11:59',to_date('28-04-2020','dd-mm-yyyy'),318674179);
commit;

insert into orderOfMeal
values(123467,'14:31',to_date('05-05-2020','dd-mm-yyyy'),318532411);
commit;

insert into orderOfMeal
values(123468,'18:07',to_date('05-05-2020','dd-mm-yyyy'),209533674);
commit;

insert into orderOfMeal
values(123471,'18:07',to_date('02-06-2020','dd-mm-yyyy'),209533674);
commit;

insert into orderOfMeal
values(123472,'19:07',to_date('02-06-2020','dd-mm-yyyy'),209533674);
commit;

insert into orderOfMeal
values(123473,'18:23',to_date('02-06-2020','dd-mm-yyyy'),209533674);
commit;


insert into Mealofchef
values('Pizza margarita',207123893);                                           

insert into Mealofchef
values('Pizza margarita',209623893);

insert into Mealofchef
values('Pizza napolitana',207123893);

insert into Mealofchef
values('Pizza napolitana',209623893);

insert into Mealofchef
values('Pizza Habait',207123893);

insert into Mealofchef
values('Pizza Habait',209623893);

insert into Mealofchef
values('Pizza gluten free',207123893);

insert into Mealofchef
values('Pizza gluten free',209623893);

insert into Mealofchef
values('Pizza vegan',207123893);

insert into Mealofchef
values('Pizza vegan',209623893);

insert into Mealofchef
values('Pasta Patuchini',209489823);

insert into Mealofchef
values('Pasta Patuchini',201503190);

insert into Mealofchef
values('Pasta sweet potato ravioli',209489823);

insert into Mealofchef
values('Pasta sweet potato ravioli',201503190);

insert into Mealofchef
values('Pasta cheese ravioli',209489823);

insert into Mealofchef
values('Pasta cheese ravioli',201503190);

insert into Mealofchef
values('Pasta Nioki',209489823);

insert into Mealofchef
values('Pasta Nioki',201503190);

insert into Mealofchef
values('Greek Salad',207523179);

insert into Mealofchef
values('Greek Salad',206629293);

insert into Mealofchef
values('Chalumi',207523179);

insert into Mealofchef
values('Chalumi',206629293);

insert into Mealofchef
values('Waffles',207536798);

insert into Mealofchef
values('Waffles',206123893);

insert into Mealofchef
values('Suphle',207536798);

insert into Mealofchef
values('Suphle',206123893);

insert into Mealofchef
values('Suphle',209623894);
commit;
insert into Mealofchef
values('Cheese Cake',207536798);

insert into Mealofchef
values('Cheese Cake',206123893);

insert into Mealofchef
values('Apple Pie',207536798);

insert into Mealofchef
values('Apple Pie',206123893);

insert into Mealofchef
values('French Crepe',207536798);

insert into Mealofchef
values('French Crepe',206123893);

insert into Mealoforder(quantity,nameOfMeal,numOfOrder)
values(2,'French Crepe',123451);

insert into Mealoforder(quantity,nameOfMeal,numOfOrder)
values(1,'Greek Salad',123451);

insert into Mealoforder(quantity,nameOfMeal,numOfOrder)
values(2,'Chalumi',123451);

insert into Mealoforder(quantity,nameOfMeal,numOfOrder)
values(1,'Pizza margarita',123452);

insert into Mealoforder(quantity,nameOfMeal,numOfOrder)
values(2,'Pasta cheese ravioli',123452);

insert into Mealoforder(quantity,nameOfMeal,numOfOrder)
values(2,'Suphle',123452);

insert into Mealoforder(quantity,nameOfMeal,numOfOrder)
values(2,'Pasta sweet potato ravioli',123454);

insert into Mealoforder(quantity,nameOfMeal,numOfOrder)
values(2,'Apple Pie',123454);
commit;
insert into Mealoforder(quantity,nameOfMeal,numOfOrder)
values(2,'Chalumi',123455);

insert into Mealoforder(quantity,nameOfMeal,numOfOrder)
values(1,'Pizza vegan',123455);

insert into Mealoforder(quantity,nameOfMeal,numOfOrder)
values(2,'Pasta Patuchini',123455);

insert into Mealoforder(quantity,nameOfMeal,numOfOrder)
values(2,'Cheese Cake',123456);

insert into Mealoforder(quantity,nameOfMeal,numOfOrder)
values(2,'Pasta Patuchini',123450);

insert into Mealoforder(quantity,nameOfMeal,numOfOrder)
values(2,'Cheese Cake',123459);

insert into Mealoforder(quantity,nameOfMeal,numOfOrder)
values(2,'Pasta Patuchini',123459);

insert into Mealoforder(quantity,nameOfMeal,numOfOrder)
values(2,'Cheese Cake',123458);

insert into Mealoforder(quantity,nameOfMeal,numOfOrder)
values(1,'Pasta sweet potato ravioli',123460);

insert into Mealoforder(quantity,nameOfMeal,numOfOrder)
values(3,'Pasta sweet potato ravioli',123462);                    

insert into Mealoforder(quantity,nameOfMeal,numOfOrder)
values(1,'Waffles',123463);                                         

insert into Mealoforder(quantity,nameOfMeal,numOfOrder)
values(2,'Suphle',123464);

insert into Mealoforder(quantity,nameOfMeal,numOfOrder)
values(3,'Apple Pie',123465);

insert into Mealoforder(quantity,nameOfMeal,numOfOrder)
values(3,'French Crepe',123466);
commit;

insert into Mealoforder(quantity,nameOfMeal,numOfOrder)
values(2,'Pasta cheese ravioli',123467);

insert into Mealoforder(quantity,nameOfMeal,numOfOrder)
values(2,'Pizza gluten free',123468);
commit;

insert into Mealoforder(quantity,nameOfMeal,numOfOrder)
values(2,'Shakshuka',123471);
commit;

insert into Mealoforder(quantity,nameOfMeal,numOfOrder,isCooked,Isserved)
values(2,'Apple Pie',123471,'T','F');
commit;

insert into Mealoforder(quantity,nameOfMeal,numOfOrder)
values(2,'Pizza gluten free',123471);
commit;

insert into Mealoforder(quantity,nameOfMeal,numOfOrder)
values(2,'Pizza gluten free',123472);
commit;
insert into Mealoforder(quantity,nameOfMeal,numOfOrder)
values(2,'Omelet',123473);
commit;

insert into Mealoforder(quantity,nameOfMeal,numOfOrder)
values(1,'Omelet',123468);
commit;

insert into payment
values('Cash',0506457837,123460);                                    

insert into payment
values('Cash',0533142550,123455);

insert into payment
values('Gift card',052666141,123455);

insert into payment
values('Credit card',0532415698,123451);

insert into payment
values('Gift card',0547339542,123454);

insert into payment
values('Cash',0528881915,123455);

insert into payment
values('Cash',0533142599,123452);

insert into payment
values('Gift card',0547692013,123452);

insert into payment
values('Credit card',0532415698,123459);

insert into payment
values('Gift card',0547339542,123450);

insert into payment
values('Cash',0528881915,123458);

insert into payment
values('Cash',0506457837,123458);

insert into payment
values('Gift card',0506457837,123458);

insert into payment
values('Gift card',0526791119,123400);
commit;
