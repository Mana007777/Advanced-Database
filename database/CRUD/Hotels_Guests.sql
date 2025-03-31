--CREATE
INSERT INTO Hotels_Guests (GuestID, GuestName, GuestPhone, GuestEmail) VALUES
(1, 'Alice Johnson', '555-123-4567', 'alice@example.com'),
(2, 'Bob Smith', '555-987-6543', 'bob@example.com');

--READ
SELECT * FROM Hotels_Guests;

--UPDATE
UPDATE Hotels_Guests
SET GuestPhone = '555-789-1234'
WHERE GuestID = 1;

--DELETE
DELETE FROM Hotels_Guests WHERE GuestID = 2;
