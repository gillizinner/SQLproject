
[General]
Version=1

[Preferences]
Username=
Password=2849
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=GILLA
Name=ORDERDETAILES
Count=50

[Record]
Name=QUANTITY
Type=NUMBER
Size=2
Data=Random(1, 10)
Master=

[Record]
Name=NAMEOFMEAL
Type=VARCHAR2
Size=30
Data=List(select nameOfMeal from meal)
Master=

[Record]
Name=NUMOFORDER
Type=NUMBER
Size=6
Data=List(select numOfOrder from orderOfMeal)
Master=

[Record]
Name=ISSERVED
Type=VARCHAR2
Size=30
Data=List('T', 'F')
Master=

[Record]
Name=ISCOOKED
Type=VARCHAR2
Size=30
Data=List('T', 'F')
Master=

