SELECT weight
FROM Production.Product
WHERE weight > 500 AND weight <=700

SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'M' AND SalariedFlag = 1

SELECT *
FROM person.Person
WHERE FirstName = 'Peter' AND LastName = 'Krebs'

SELECT *
FROM person.EmailAddress
WHERE BusinessEntityID = '26'

SELECT COUNT(DISTINCT Name)
FROM production.Product

SELECT COUNT(Size)
FROM Production.Product

SELECT TOP 10 *
FROM HumanResources.Employee
ORDER BY SickLeaveHours desc

SELECT TOP 10 ProductID, Name, ListPrice
FROM Production.Product
ORDER BY ListPrice desc

SELECT ProductID, Name
FROM Production.Product
WHERE ProductID >= 1 AND ProductID <= 4
ORDER BY ProductID asc

SELECT *
FROM Production.Product
WHERE ListPrice between 1000 AND 1500

SELECT *
FROM Person.Person
WHERE BusinessEntityID IN (2, 7, 13)

SELECT *
FROM Person.Person
WHERE FirstName like 'a%o'

SELECT COUNT (ListPrice)
FROM Production.Product
WHERE ListPrice> 1500

SELECT COUNT(LastName)
FROM Person.Person
WHERE MiddleName like 'p%'

SELECT COUNT(DISTINCT City)
FROM Person.Address 

SELECT DISTINCT City
FROM Person.Address
ORDER BY City asc

SELECT COUNT(*)	
FROM Production.Product
WHERE COLOR = 'RED' AND ListPrice between 500 and 1000

SELECT COUNT(*)
FROM Production.product
WHERE Name like ('%road%')

SELECT TOP 10 sum(linetotal) AS "SOMA"
FROM sales.SalesOrderDetail

SELECT TOP 10 avg(linetotal) as "MÉDIA"
FROM sales.SalesOrderDetail

SELECT FirstName, Count(FirstName) as"contagem"
FROM Person.Person
GROUP BY FirstName

SELECT Color, avg(ListPrice) as "valor médio"
FROM Production.Product
WHERE Color = 'silver'
GROUP BY Color

SELECT MiddleName, count(FirstName) as "contagem"
FROM Person.Person
GROUP BY MiddleName

SELECT ProductID,avg(OrderQty) as"valor médio"
FROM sales.SalesOrderDetail
GROUP BY ProductID

SELECT TOP 10 ProductID, SUM(linetotal) as"vendas com maiores valores de venda"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY SUM(LineTotal) desc

SELECT ProductID, count(ProductID) as "total", avg(OrderQty) as "média"
FROM production.workorder
GROUP BY ProductID 