use northwind;
#What is the product name of the most expensive products
select ProductName from Products where UnitPrice=(select Max(UnitPrice) from Products);
#What is the shipping details of all orders hshipped through federal shipping
select O.OrderID,O.ShipName,O.ShipAddress,O.shipVia from Orders O join Shippers S on O.ShipVia=S.ShipperID where S.ShipperID=(select ShipperID from Shippers where CompanyName='Federal Shipping'); 
#what are the order ids of the orders that ordered 'sasquatch ale'
select * from northwind.`Order Details` O join Products P on O.ProductID=P.ProductID where P.ProductID= (select ProductID from products where ProductName='Sasquatch Ale');
#What is the name of the employess that sold order 10266
select concat(FirstName,' ',LastName) as FullName from Employees E join Orders O on E.EmployeeID=O.EmployeeID where OrderID=10266;
#what is the name of the customer that bought order 10266
select C.ContactName from Orders O join Customers C on O.CustomerID=C.CustomerID where O.OrderID=10266;

