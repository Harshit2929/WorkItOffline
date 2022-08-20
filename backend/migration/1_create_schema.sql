CREATE TABLE USERS(
    UID int NOT NULL,
    FirstName varchar (255) NOT NULL,
    MiddleName varchar(255),
    LastName varchar (255) NOT NULL,
    AmountDue int,
    PRIMARY KEY(UID),
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
ALTER TABLE USERS
ADD COLUMN SHGID INT;
ALTER TABLE USERS
ADD FOREIGN KEY(SHGID) REFERENCES SHG(SHGID);
ALTER TABLE USERS
ADD PhoneNumber varchar(255);
ALTER TABLE SHG
ADD PhoneNumber varchar(255);
ALTER TABLE SHG
ADD first_name varchar (255),
    ADD last_name varchar (255),
    ADD middle_name varchar(255)
ALTER TABLE SHG
    RENAME COLUMN TotalAmount TO total_amount,
    RENAME COLUMN PhoneNumber TO phone_number
ALTER TABLE MEETINGS
    RENAME COLUMN MeetingID TO meeting_id,
    RENAME COLUMN MeetingDate TO meeting_date,
    RENAME COLUMN MeetingTime TO meeting_time,
    RENAME COLUMN IsPresent TO is_present
ALTER TABLE TRANSACTIONS
    RENAME COLUMN TransactionID TO transaction_id
ALTER TABLE USERS
    RENAME COLUMN FirstName TO first_name,
    RENAME COLUMN LastName TO last_name,
    RENAME COLUMN MiddleName TO middle_name,
    RENAME COLUMN IsAdmin TO is_admin,
    RENAME COLUMN AmountDue TO amount_due,
    RENAME COLUMN PhoneNumber TO phone_number