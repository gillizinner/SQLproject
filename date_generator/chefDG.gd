
[General]
Version=1

[Preferences]
Username=
Password=2785
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=GILLA
Name=CHEF
Count=50

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
Name=SHIFT
Type=VARCHAR2
Size=20
Data=List('Morning', 'Noon-afternoon', 'Evening')
Master=

[Record]
Name=IDOFCHEF
Type=NUMBER
Size=9
Data=Sequence(200000000)
Master=

[Record]
Name=EXPERIENCE
Type=NUMBER
Size=2
Data=Random(0, 30)
Master=

