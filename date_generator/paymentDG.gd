
[General]
Version=1

[Preferences]
Username=
Password=2234
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=GILLA
Name=PAYMENT
Count=50

[Record]
Name=PAYMENTMETHOD
Type=VARCHAR2
Size=25
Data=List('Cash', 'Credit card', 'Gift card')
Master=

[Record]
Name=CUSTOMERPHONE
Type=NUMBER
Size=10
Data=List(select phoneNumber from clubMember)
Master=

[Record]
Name=NUMOFORDER
Type=NUMBER
Size=6
Data=List(select numOfOrder from orderOfMeal)
Master=

