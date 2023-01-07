USE classicmodels;
Answer:01 WITH x AS(SELECT 'shippedDate',COUNT('orderNumber')AS'total_orders' FROM Orders)SELECT AVG('total_orders')AS'AverageNumberOfOrdersShipped'FROM x;
Answer:02 WITH order_placed AS(SELECT 'orderDate',COUNT('orderNumber')AS'total_orders_placed' FROM Orders)SELECT AVG('total_orders_placed')AS'AverageNumberOfOrdersPlaced'FROM order_placed;
Answer:03 SELECT * FROM products order by MSRP limit 1;
Answer:04 SELECT productName FROM products order by quantityInStock limit 1;
Answer:07 SELECT * FROM customers where city like 'Melbourne%'; 
Answer:08 SELECT * FROM customers where customerName like 'N%';
Answer:09 SELECT * FROM customers where phone like '7%';
Answer:11 SELECT orderNumber FROM orderdetails where quantityOrdered <10;
Answer:12 SELECT orderNumber,customerName  FROM customers inner join orders ON customers.customerNumber = orders.customerNumber where customerName like 'N%';
Answer:13 SELECT * FROM customers inner join orders ON customers.customerNumber = orders.customerNumber where status = "Disputed";
Answer:15 SELECT  * FROM payments where checkNumber >1000;

