

#Add  a new supplier
INSERT INTO `northwind`.`Suppliers`
(`SupplierID`,
`CompanyName`,
`ContactName`,
`ContactTitle`,
`Address`,
`City`,
`Region`,
`PostalCode`,
`Country`,
`Phone`,
`Fax`,
`HomePage`)
VALUES
(30,
'PS',
'Rahul',
'Re',
'RichmondTown',
'Bangalore',
'Chandapura',
562106,
'India',
897200000,
'hkj',
'Mayumi');

#Add a new product provided by that supplier
INSERT INTO `northwind`.`Products`
(`ProductID`,
`ProductName`,
`SupplierID`,
`CategoryID`,
`QuantityPerUnit`,
`UnitPrice`,
`UnitsInStock`,
`UnitsOnOrder`,
`ReorderLevel`,
`Discontinued`)
VALUES
(78,
'Lassi dsa',
30,
2,
'500ml',
32,
23,
0,
5,
0);

#List all products and their suppliers.


select ProductName,P.SupplierID from Products P join Suppliers S on P.SupplierID=S.SupplierID;

#Raise the price of your new product by 15%.

update Products set Unitprice=UnitPrice+(UnitPrice*0.15) where SupplierID=30;

#List the products and prices of all products from that supplier.
select * from Products where SupplierID=30;

#Delete the new product.

Delete  from Products where SupplierID=30; 

#Delete the new supplier

Delete from Suppliers where SupplierID=30;

#List all products
select * from products;

#List all suppliers.
select * from suppliers;