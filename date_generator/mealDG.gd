
[General]
Version=1

[Preferences]
Username=
Password=2444
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=GILLA
Name=MEAL
Count=1000

[Record]
Name=NAMEOFMEAL
Type=VARCHAR2
Size=30
Data=Elements.Symbol' meal'
Master=

[Record]
Name=PRICE
Type=NUMBER
Size=3
Data=Random(13, 80)
Master=

[Record]
Name=TYPEOFMEAL
Type=VARCHAR2
Size=25
Data=List('Opening', 'Main','Desert','BreakFast','Drink')
Master=

[Record]
Name=RATE
Type=NUMBER
Size=1
Data='0'
Master=

[Record]
Name=AVAILABLE
Type=VARCHAR2
Size=1
Data=List('T', 'F')
Master=

