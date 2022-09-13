
[General]
Version=1

[Preferences]
Username=
Password=2701
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=GILLA
Name=INGREDIENTOFMEAL
Count=50

[Record]
Name=AMOUNT
Type=NUMBER
Size=
Data=Random(1, 12)
Master=

[Record]
Name=NAMEOFMEAL
Type=VARCHAR2
Size=30
Data=List(select nameOfMeal from meal)
Master=

[Record]
Name=NAMEOFINGREDIENT
Type=VARCHAR2
Size=30
Data=List(select nameOfIngredient from ingredient)
Master=

