use northwind;
#Name of table that sells
select * from products;
#List all product details
select ProductID as 'Product Id' ,ProductName as 'Product Name' ,UnitPrice as 'Unit Price' from products;
#List product details orderby price ascending
select ProductID as 'Product Id' ,ProductName as 'Product Name' ,UnitPrice as 'Unit Price' from products order by UnitPrice;
#List the products where unit price is 7.5 or less
select ProductID as 'Product Id' ,ProductName as 'Product Name' ,UnitPrice as 'Unit Price' from products where UnitPrice<=7.5;
#Products with units in hand atleast 100 units and order by price descending
select * from products where UnitsInStock >=100 order by UnitPrice desc;
#Products with units in hand atleast 100 units and order by price descending and then by product name
select * from products where UnitsInStock >=100 order by UnitPrice desc,ProductName;
#List Products with no units on hand but 1 0r more units of them on backorder order by product name
select * from products where UnitsInStock = 0 and UnitsOnOrder>=1 order by ProductName;
#List the details of Categories
select * from Categories;
#List all the details of categories where categoryid is seafood
select * from Categories where CategoryID=8;
#List all the product and category details to list all the sea food items we carry
select ProductName,CategoryName,C.Description,UnitPrice from Products P join Categories C where P.CategoryID=C.CategoryID and  C.CategoryID=8;
#List the firstname and lastname of all employess
select FirstName,LastName from Employees;
#What employess have manager in their titles
select FirstName,LastName,Title from Employees where Title like '%Manager';
#List the distinct job titles in employees
select distinct Title from Employees;
#What employess have salary between 2000 and 2500
select * from Employees where Salary between 2000 and 2500;
#List all information about suppliers
select * from Suppliers;
#List all items that Tokyo traders supplies to northwind
select CompanyName,ProductName from Suppliers S join Products P on S.SupplierID=P.SupplierID where CompanyName='Tokyo Traders';
#How many suppliers are there
select count(*) as 'No Of Suppliers' from suppliers;
#what is the sum of all the employees salaries
select Round(sum(Salary)) from Employees;
#What is the price of cheapest item that northwind sells
select Min(UnitPrice) from Products;
#What is the average price of items that northwind sells
select Avg(UnitPrice) from Products;
#What is the price of most expensive item that northwind sells
select Max(UnitPrice) from Products;
#what is the supplier id of each supplier and no of items they supply
Select Suppliers.SupplierID,count(ProductName) NoOfItemsSupplied from Products join Suppliers on Products.SupplierID=Suppliers.SupplierID group by Suppliers.SupplierID;
#what is the categoryid of each category and average price of each item in the category
Select Avg(UnitPrice),C.CategoryID from Categories C join Products P on P.CategoryID=C.CategoryID group by C.CategoryID;
#List suppliers that provide at least 5 items to northwind supplier id and number of items they supply
select Count(*) ,S.SupplierID from Suppliers S join Products P on P.SupplierID=S.SupplierID group by S.SupplierID having count(*)>=5;
#List product details and inventory value sort the results in desc by value and then by product name
select ProductID,ProductName,ceil(UnitPrice*UnitsInStock )as InventoryValue from Products order by InventoryValue desc,ProductName;