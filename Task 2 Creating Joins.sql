use littlelemondb;

SELECT C.CustomerID, FullName, OrderID, TotalCost, Cuisine AS MenuName, CourseName
FROM Orders O
INNER JOIN Customers C ON C.CustomerID = O.CustomerID
INNER JOIN Menu M ON M.MenuID = O.MEnuID
INNER JOIN MenuItems MS on MS.MenuItemID = M.MenuItemID
WHERE TotalCost > 150;