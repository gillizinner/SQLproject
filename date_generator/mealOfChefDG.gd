
[General]
Version=1

[Preferences]
Username=
Password=2722
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=GILLA
Name=MEALOFCHEF
Count=10..20

[Record]
Name=NAMEOFMEAL
Type=VARCHAR2
Size=30
Data=List(select nameOfMeal from Meal)
Master=

[Record]
Name=IDOFCHEF
Type=NUMBER
Size=9
Data=List(select IdOfChef from Chef)
Master=

