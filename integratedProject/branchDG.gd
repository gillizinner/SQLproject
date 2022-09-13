
[General]
Version=1

[Preferences]
Username=
Password=2832
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
Name=COSHER
Type=VARCHAR2
Size=20
Data=List('Yes', 'No')
Master=

[Record]
Name=PHONENUMBERBRANCH
Type=NUMBER
Size=
Data=['03-'1000000]
Master=

[Record]
Name=POSITION
Type=VARCHAR2
Size=20
Data=Address1  + ','+ City
Master=

[Record]
Name=HOURSOPEN
Type=VARCHAR2
Size=20
Data=['1'0':3'0]
Master=

[Record]
Name=HOURSCLOSED
Type=VARCHAR2
Size=20
Data=['2'0':0'0]
Master=


[Table]
Owner=GILLA
Name=INGREDIENT
Count=10..20

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
Data=List('vegtetables', 'fruits','dry','drinks')
Master=

[Record]
Name=NAMEOFINGREDIENT
Type=VARCHAR2
Size=30
Data=
Master=

