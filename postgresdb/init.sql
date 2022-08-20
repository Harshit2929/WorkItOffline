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
CREATE TABLE SHGS( 
shg_id int NOT NULL,
Name varchar (255) NOT NULL,
total_amount int,
UID int,
PRIMARY KEY(shg_id),
FOREIGN KEY (UID) REFERENCES USERS(UID)
);


CREATE TABLE MEETINGS(
meeting_id int NOT NULL,
UID int NOT NULL,
meeting_date varchar (255) NOT NULL,
meeting_time varchar (255) NOT NULL,
is_present bool,
PRIMARY KEY(meeting_id),
FOREIGN KEY (UID) REFERENCES USERS(UID)
); 

CREATE TABLE TRANSACTIONS(
transaction_id int NOT NULL,
Amount int,
time_stamp varchar(255) NOT NULL,
UID int,
shg_id int,
 FOREIGN KEY (UID) REFERENCES USERS(UID),
FOREIGN KEY (shg_id) REFERENCES SHG(shg_id),
PRIMARY KEY(transaction_id)
);
