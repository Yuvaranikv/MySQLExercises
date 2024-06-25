use northwind;
select ProductName from Products where UnitPrice=(select Max(UnitPrice) from Products);
select O.OrderID,O.ShipName,O.ShipAddress,O.shipVia from Orders O join Shippers S on O.ShipVia=S.ShipperID where S.ShipperID=(select ShipperID from Shippers where CompanyName='Federal Shipping'); 
select * from northwind.`Order Details` O join Products P on O.ProductID=P.ProductID where P.ProductID= (select ProductID from products where ProductName='Sasquatch Ale');
select concat(FirstName,' ',LastName) as FullName from Employees E join Orders O on E.EmployeeID=O.EmployeeID where OrderID=10266;
select C.ContactName from Orders O join Customers C on O.CustomerID=C.CustomerID where O.OrderID=10266;
select * from Customers where OrderId=10266;