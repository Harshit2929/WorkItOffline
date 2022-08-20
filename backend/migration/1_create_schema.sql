CREATE TABLE USERS( 
UID int NOT NULL,
FirstName varchar (255) NOT NULL,
MiddleName varchar(255),
LastName varchar (255) NOT NULL,
AmountDue int,
PRIMARY KEY( UID ),
IsAdmin bool
);
-- USE server_database;
CREATE TABLE SHG( 
SHGID int NOT NULL,
Name varchar (255) NOT NULL,
TotalAmount int,
UID int,
PRIMARY KEY(SHGID),
FOREIGN KEY (UID) REFERENCES USERS(UID)
);


CREATE TABLE MEETINGS(
MeetingID int NOT NULL,
UID int NOT NULL,
MeetingDate varchar (255) NOT NULL,
MeetingTime varchar (255) NOT NULL,
IsPresent bool,
PRIMARY KEY(MeetingID),
FOREIGN KEY (UID) REFERENCES USERS(UID)
); 

CREATE TABLE TRANSACTIONS(
TransactionID int NOT NULL,
Amount int,
Timestamp varchar(255) NOT NULL,
UID int,
SHGID int,
 FOREIGN KEY (UID) REFERENCES USERS(UID),
FOREIGN KEY (SHGID) REFERENCES SHG(SHGID),
PRIMARY KEY(TransactionID)
);
