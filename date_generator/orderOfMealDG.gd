
[General]
Version=1

[Preferences]
Username=
Password=2522
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=GILLA
Name=ORDEROFMEAL
Count=10..20

[Record]
Name=NUMOFORDER
Type=NUMBER
Size=6
Data=Sequence(110000)
Master=

[Record]
Name=TIMEOFORDER
Type=VARCHAR2
Size=25
Data=['1'0':1'0]
Master=

[Record]
Name=DATEOFORDER
Type=DATE
Size=48
Data=Random(1/1/1990, 28/5/2020)
Master=

[Record]
Name=IDOFWAITER
Type=NUMBER
Size=9
Data=List(select IdOfWaiter from waiter)
Master=

