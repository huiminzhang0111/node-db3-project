-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

select p.productname, c.categoryname
from product as p
join category as c
on p.categoryid = c.id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

select o.id, s.companyname
from "order" as o
join shipper as s
on o.shipvia = s.id
where date(o.shippeddate) < date('2012-08-09')

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

select p.productname, o.quantity
from orderdetail as o
join product as p
on o.productid = p.id
where o.orderid = 10251

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

select o.id, c.companyname, e.lastname
from "order" as o
join customer as c
on o.customerid = c.id
join employee as e
on o.employeeid = e.id