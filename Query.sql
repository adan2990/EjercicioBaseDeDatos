use classicmodels;

SELECT * FROM customers;
SELECT * FROM employees;
SELECT * FROM offices;
SELECT * FROM orderdetails;
SELECT * FROM orders;
SELECT * FROM payments;
SELECT * FROM productlines;
SELECT * FROM products;

SELECT customerNumber, customerName FROM customers;
SELECT * FROM customers 
INNER JOIN orders ON customers.customerNumber = orders.customerNumber
INNER JOIN orderdetails ON orders.orderNumber = orderdetails.orderNumber
INNER JOIN products ON orderdetails.productCode = products.productCode;
