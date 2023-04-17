use littlelemondb;

DELIMITER //

CREATE PROCEDURE CancelOrder(Order_id int)
BEGIN
DELETE FROM
Orders
WHERE Orderid = Order_id;

SELECT CONCAT("Order ", Order_id, " is cancelled") AS Confirmation
FROM Orders;

END //
DELIMITER ;

CALL CancelOrder(5);