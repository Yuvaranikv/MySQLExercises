#List of all product order by category name and product name
SELECT 
    ProductID, ProductName, UnitPrice, C.CategoryName
FROM
    Products P
        JOIN
    Categories C ON P.CategoryID = C.CategoryID
ORDER BY C.CategoryName , P.ProductName;
#List of all products and supplier name that cost more than $75
SELECT 
    ProductID, ProductName, UnitPrice, S.ContactName
FROM
    Products P
        JOIN
    Suppliers S ON P.SupplierID = S.SupplierID
WHERE
    P.UnitPrice >= 75
ORDER BY P.ProductName;
#List of products,category name and supplier name order by product name
SELECT 
    ProductID, ProductName, UnitPrice, S.ContactName,C.CategoryName
FROM
    Products P
        JOIN
    Suppliers S ON P.SupplierID = S.SupplierID
    join  Categories C ON P.CategoryID = C.CategoryID
ORDER BY P.ProductName;
#ProductName and Category Name of the most expensive Products
Select ProductName,CategoryName,UnitPrice from Products P join Categories C on P.CategoryID=C.CategoryID where UnitPrice =(select max(UnitPrice) from Products);

#List the order details of every order shipped to germany
select orderId,shipname,shipaddress,shipcountry,CompanyName from orders O join Shippers S on S.ShipperID=O.ShipVia where O.shipcountry='Germany';
#List all order details and shipping details of 'Sasquatch Ale'
select O.orderId,O.OrderDate, shipname,shipaddress,shipcountry,P.ProductName from orders O join `Order Details`as OD  on OD.OrderID=O.OrderID join Products P on P.ProductID=OD.ProductID where ProductName='Sasquatch Ale';



