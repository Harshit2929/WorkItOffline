USE server_database;
ALTER TABLE SHG
    RENAME COLUMN TotalAmount TO total_amount,
    RENAME COLUMN PhoneNumber TO phone_number
ALTER TABLE MEETINGS
    RENAME COLUMN MeetingID TO meeting_id,
    RENAME COLUMN MeetingDate TO meeting_date,
    RENAME COLUMN MeetingTime TO meeting_time,
    RENAME COLUMN IsPresent TO is_present
ALTER TABLE TRANSACTIONS
    RENAME COLUMN TransactionId TO transaction_id
ALTER TABLE USERS
    RENAME COLUMN TransactionID TO trnsaction_id,
    RENAME COLUMN FirstName TO first_name,
    RENAME COLUMN LastName TO last_name,
    RENAME COLUMN MiddleName TO middle_name,
    RENAME COLUMN IsAdmin TO is_admin,
    RENAME COLUMN AmountDue TO amount_due,
    RENAME COLUMN PhoneNumber TO phone_number