
[General]
Version=1

[Preferences]
Username=
Password=2465
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=GILLA
Name=WAITER
Count=30

[Record]
Name=FIRSTNAME
Type=VARCHAR2
Size=25
Data=FirstName
Master=

[Record]
Name=LASTNAME
Type=VARCHAR2
Size=25
Data=LastName
Master=

[Record]
Name=IDOFWAITER
Type=NUMBER
Size=9
Data=Sequence(320000000)
Master=

[Record]
Name=SHIFT
Type=VARCHAR2
Size=20
Data=List('Morning', 'Noon-afternoon', 'Evening')
Master=

[Record]
Name=SALARY
Type=FLOAT
Size=22
Data=Random(3000, 8000)
Master=

[Record]
Name=POSITIONOFWAITER
Type=VARCHAR2
Size=20
Data=List(select position from branch)
Master=

