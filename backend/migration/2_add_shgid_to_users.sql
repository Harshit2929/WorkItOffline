USE server_database;
ALTER TABLE USERS
ADD COLUMN SHGID INT;
ALTER TABLE USERS
ADD FOREIGN KEY(SHGID) REFERENCES SHG(SHGID);