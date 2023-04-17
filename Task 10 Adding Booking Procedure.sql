use littlelemondb;

DELIMITER //

CREATE PROCEDURE AddBooking(Booking_id INT, Booking_date Date, Table_Number INT, Customer_ID INT)
BEGIN
          
	INSERT INTO bookings(BookingID, BookingDate, TableNumber, CustomerID)
	VALUES(Booking_id, Booking_date, Table_Number, Customer_ID);
	
    SELECT "New Booking Added" AS Confirmation;    
  
END //
DELIMITER ;

CALL AddBooking(9, "2022-12-30", 3, 4);
