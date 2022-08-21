CREATE TABLE USERS(
    UID int NOT NULL,
    first_name varchar (255) NOT NULL,
    middle_name varchar(255),
    last_name varchar (255) NOT NULL,
    amount_due int,
    phone_number varchar(255),
    PRIMARY KEY(UID),
    is_admin bool
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