
[General]
Version=1

[Preferences]
Username=
Password=2811
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=GILLA
Name=INGREDIENT
Count=30

[Record]
Name=PRICEOFINGREDIENT
Type=NUMBER
Size=3
Data=Random(5, 80)
Master=

[Record]
Name=TYPEOFINGREDIENT
Type=VARCHAR2
Size=20
Data=List('vegetables', 'fruits', 'dry','drinks')
Master=

[Record]
Name=NAMEOFINGREDIENT
Type=VARCHAR2
Size=30
Data=Elements.Symbol+' ingredient'
Master=

