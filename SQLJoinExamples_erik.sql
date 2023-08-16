-- Inner Join Products is the left table and sales is the right
-- we wil only see products that were sold
SELECT * FROM Products AS P
INNER JOIN Sales AS S
ON P.ProductID = S.ProductID;

-- Left Join, since products is the left table we wil see all products, but we will see null values if the product was not sold
SELECT * FROM Products as p
LEFT JOIN Sales as s
ON P.ProductID = S.ProductID;
-- Inner Join, employees left sales right
-- only see emoloyees that made a sale
SELECT * FROM Employees as e
INNER JOIN sales as s
ON e.EmployeeID = s.EmployeeID;

-- Left join 
-- those that did not make a sale will appear as null on the right table (sales)
SELECT * FROM Employees AS e
LEFT JOIN Sales AS s
ON e.EmployeeID = s.EmployeeID;

-- using multiple joins

SELECT p.Name as "Product Sold", p.Price, s.Quantity as "Amount sold", e.FirstName, e.LastName
FROM Products as p
INNER JOIN Sales as s
ON p.ProductID = s.ProductID
INNER JOIN Employees as e
ON s.EmployeeID = e.EmployeeID;