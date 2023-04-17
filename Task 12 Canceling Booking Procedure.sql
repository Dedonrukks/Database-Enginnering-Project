use littlelemondb;

DELIMITER //

CREATE PROCEDURE CancelingBooking(Booking_id INT)
BEGIN
          
	DELETE FROM
    bookings
    WHERE BookingID = Booking_id;
	
    SELECT CONCAT("Booking ", Booking_id, " is cancelled") AS Confirmation;    
  
END //
DELIMITER ;

CALL CancelingBooking(9);