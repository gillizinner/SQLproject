
[General]
Version=1

[Preferences]
Username=
Password=2190
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=GILLA
Name=CLUBMEMBER
Count=10..20

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
Name=DATEOFBIRTH
Type=DATE
Size=
Data=Random(1/1/1920, 30/12/2002)
Master=

[Record]
Name=DATEOFRENEWMEMBERSHIP
Type=DATE
Size=
Data=Random(1/1/1990, 28/5/2020)
Master=

[Record]
Name=POINTS
Type=NUMBER
Size=3
Data='0'
Master=

[Record]
Name=STREET
Type=VARCHAR2
Size=25
Data=LastName
Master=

[Record]
Name=CITY
Type=VARCHAR2
Size=20
Data=City
Master=

[Record]
Name=NUMOFBUILDING
Type=NUMBER
Size=3
Data=Random(1, 300)
Master=

[Record]
Name=EMAIL
Type=VARCHAR2
Size=30
Data=Email
Master=

[Record]
Name=PHONENUMBER
Type=NUMBER
Size=10
Data=['050' 00000000]
Master=

