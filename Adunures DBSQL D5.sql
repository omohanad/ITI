--1.Display the SalesOrderID, ShipDate of the SalesOrderHeader table (Sales schema) to show SalesOrders that occurred within the period ‘7/28/2002’ and ‘7/29/2014’
SELECT SalesOrderID, ShipDate
FROM Sales.SalesOrderHeader
WHERE OrderDate BETWEEN '2002-07-28' AND '2014-07-29';
----------------------
--2. Display only Products(Production schema) with a StandardCost below $110.00 (show ProductID, Name only)
Select Name, ProductNumber
from Production.Product
where StandardCost < 110
-----------------------
--3.Display ProductID, Name if its weight is unknown
Select Name, ProductNumber
from Production.Product
where weight is null
-------------------
--Display all Products with a Silver, Black, or Red Color
Select *
from Production.Product 
where Color in ('silver', 'black', 'Red')
-------------
--Display any Product with a Name starting with the letter B
Select *
from Production.Product 
where name like 'b%'
----------------
--6.Run the following Query
UPDATE Production.ProductDescription
SET Description = 'Chromoly steel_High of defects'
WHERE ProductDescriptionID = 3
------------------
--Then write a query that displays any Product description with underscore value in its description
Select *
from Production.ProductDescription
where Description like '_%'
---------------
----7.Calculate sum of TotalDue for each OrderDate in Sales.SalesOrderHeader table for the period between  '7/1/2001' and '7/31/2014'
SELECT OrderDate, SUM(TotalDue) AS TotalDueSum
FROM Sales.SalesOrderHeader
WHERE OrderDate BETWEEN '2001-07-01' AND '2014-07-31'
GROUP BY OrderDate;
-----------------
--8. Display the Employees HireDate (note no repeated values are allowed)
SELECT NationalIDNumber, HireDate
FROM (
    SELECT NationalIDNumber, HireDate,
           ROW_NUMBER() OVER (PARTITION BY NationalIDNumber ORDER BY HireDate) AS RowNum
    FROM HumanResources.Employee
) AS Subquery
WHERE RowNum = 1;
-------------------
--9-Calculate the average of the unique ListPrices in the Product table
SELECT AVG(DISTINCT ListPrice) AS AverageListPrice
FROM Production.Product
----------------------
--10-----------

Select Name, ListPrice
from Production.Product
where ListPrice  between 100 and 200 
order by ListPrice
-----------------
--11-----------
Select rowguid, Name, SalesPersonID, Demographics into store_Archive
from Sales.Store

Select *
from store_Archive 
---------------------------
--12.	Using union statement, retrieve the today’s date in different styles using convert or format funtion

SELECT FORMAT(GETDATE(), 'MM/dd/yyyy') AS DateStyle
UNION
SELECT FORMAT(GETDATE(), 'yyyy-MM-dd')

SELECT CONVERT(varchar, GETDATE(), 101) AS DateStyle
UNION
SELECT CONVERT(varchar, GETDATE(), 102)

