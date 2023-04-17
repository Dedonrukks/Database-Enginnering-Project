use littlelemondb;

DELIMITER //

CREATE PROCEDURE UpdateBooking(Booking_id INT, Booking_date Date)
BEGIN
          
	UPDATE bookings
    SET BookingDate = Booking_date
    WHERE BookingID = Booking_id;
	
    SELECT CONCAT("Booking ", Booking_id, " updated") AS Confirmation;    
  
END //
DELIMITER ;

CALL UpdateBooking(9, "2022-12-17");