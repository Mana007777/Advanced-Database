--CREATE (INSERTION)
INSERT INTO Hotels (HotelID, HotelName, HotelLocation, HotelRating) VALUES
(1, 'Grand Plaza', 'New York', 4.5),
(2, 'Oceanview Resort', 'Miami', 4.0),
(3, 'Mountain Retreat', 'Colorado', 4.8);

--READ (SELECTION)
SELECT * FROM Hotels;

--UPDATE 
UPDATE Hotels
SET HotelRating = 5.0
WHERE HotelID = 1;

--DELETE 
DELETE FROM Hotels WHERE HotelID = 3;
