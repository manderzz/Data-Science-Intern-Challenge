
--a)How many orders were shipped by Speedy Express in total?
--I looked at the tables and Speedy Express had ShipperID = 1

SELECT COUNT(OrderID) FROM Orders WHERE ShipperID ==1 Answer:54

--b)What is the last name of the employee with the most orders?
--Employee_Orders will list all orders done by each employee
CREATE VIEW Employee_Orders AS
SELECT Employees.EmployeeID, Employees.LastName, Employees.FirstName, Orders.OrderID
FROM Employees
JOIN Orders
ON Employees.EmployeeID = Orders.EmployeeID

SELECT COUNT(EmployeeID), LastName, FirstName
FROM Employee_Orders
GROUP BY LastName
ORDER BY COUNT(EmployeeID) DESC


--c)What product was ordered the most by customers in Germany?
--First find all orders that are from Germany, then ProductDetails has the sum of total quantity of products from all the different orders
--last query is to see which has the highest quantity

CREATE VIEW GermanyOrders AS
SELECT Orders.OrderID, Customers.Country
FROM Orders JOIN Customers
ON Orders.CustomerID = Customers.CustomerID
WHERE Customers.Country = 'Germany'


CREATE VIEW ProductDetails AS
SELECT Products.ProductID, Products.ProductName, OrderDetails.OrderID, SUM(OrderDetails.Quantity) as Total
FROM Products
JOIN OrderDetails
ON Products.ProductID = OrderDetails.ProductID
GROUP BY Products.ProductName 
ORDER BY COUNT(OrderDetails.Quantity)


SELECT ProductDetails.ProductName, ProductDetails.Total
From ProductDetails
JOIN GermanyOrders ON ProductDetails.OrderID = GermanyOrders.OrderID 
ORDER BY Total DESC
