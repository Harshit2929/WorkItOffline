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
    shg_id int NOT NULL,
    name varchar (255) NOT NULL,
    total_amount int,
    UID int,
    PRIMARY KEY(shg_id),
    FOREIGN KEY (UID) REFERENCES USERS(UID)
);
-- uid and meeting _id are the composte key for the MEETING_USER table
CREATE TABLE MEETING_USER(
    meeting_id int NOT NULL,
    UID int NOT NULL,
    is_present bool,
    FOREIGN KEY (meeting_id) REFERENCES MEETINGS(meeting_id),
    FOREIGN KEY (UID) REFERENCES USERS(UID),
    PRIMARY KEY(meeting_id, UID)
);
CREATE TABLE MEETINGS(
    meeeting_id int,
    shg_id int,
    meeting_date varchar (255) NOT NULL,
    meeting_time varchar (255) NOT NULL,
    PRIMARY KEY(meeting_id),
    FOREIGN KEY (shg_id) REFERENCES SHG(shg_id),
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