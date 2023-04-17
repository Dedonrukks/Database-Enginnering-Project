use littlelemondb;

PREPARE GetOrderDetail FROM
'SELECT OrderID, Quantity, TotalCost
  FROm Orders
  WHERE CustomerID = ?';
  
SET @Customer_ID = 2;

EXECUTE GetOrderDetail USING @Customer_ID;



  
