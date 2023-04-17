use littlelemondb;

DELIMITER //

CREATE PROCEDURE CheckBooking(Booking_date Date, Table_Number INT)
BEGIN

SELECT CONCAT("Table ", Table_Number, " is already booked") AS "Booking Status"
  FROM Bookings;
  
END //
DELIMITER ;

CALL CheckBooking("2022-10-10", 1);

SELECT * FROM Bookings;

