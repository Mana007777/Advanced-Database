CREATE OR REPLACE PROCEDURE UpdateGuestInfo (
    p_GuestID INT,
    p_FirstName VARCHAR,
    p_LastName VARCHAR,
    p_Email VARCHAR,
    p_Phone VARCHAR
)
AS
BEGIN
    UPDATE Hotels_Guests
    SET GuestFirstName = p_FirstName, 
        GuestLastName = p_LastName, 
        GuestEmail = p_Email, 
        GuestPhone = p_Phone
    WHERE GuestID = p_GuestID;
END;
