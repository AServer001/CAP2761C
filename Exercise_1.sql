-- Return orders placed in June 2021
-- Tables involved: TSQLV6 database, Sales.Orders table

-- Return orders placed on the day before the last day of the month
-- Tables involved: Sales.Orders table


-- Return employees with last name containing the letter 'e' twice or more
-- Tables involved: HR.Employees table


-- Return orders with total value(qty*unitprice) greater than 10000
-- sorted by total value
-- Tables involved: Sales.OrderDetails table


-- Explain the difference between the following two queries

-- Query 1
SELECT empid, COUNT(*) AS numorders
FROM Sales.Orders
WHERE orderdate < '20220501'
GROUP BY empid;

-- Query 2
SELECT empid, COUNT(*) AS numorders
FROM Sales.Orders
GROUP BY empid
HAVING MAX(orderdate) < '20220501';


-- Figure out and return for each employee the gender based on the title of courtesy
-- Ms., Mrs. - Female, Mr. - Male, Dr. - Unknown
-- Tables involved: HR.Employees table

-- Return for each customer the customer ID and region
-- sort the rows in the output by region, ascending
-- having NULLs sort last (after non-NULL values)
-- Note that the default in T-SQL is that NULLs sort first
-- Tables involved: Sales.Customers table

