
--create table Sales(SaleID INT, ProductID INT, CustomerID INT, SaleDate TIMESTAMP, Amount NUMERIC)
INSERT INTO Sales (SaleID, ProductID, CustomerID, SaleDate, Amount)
VALUES(1, 1, 1, '2024-09-28', 10000);
INSERT INTO Sales (SaleID, ProductID, CustomerID, SaleDate, Amount)
VALUES(2,2,1,'2024-10-10',20000);
INSERT INTO Sales (SaleID, ProductID, CustomerID, SaleDate, Amount)
VALUES(3,3,2,'2024-8-7',2000);
INSERT INTO Sales (SaleID, ProductID, CustomerID, SaleDate, Amount)
VALUES(4,4,3,'2024-06-04',3699);
INSERT INTO Sales (SaleID, ProductID, CustomerID, SaleDate, Amount)
VALUES(5,1,4,'2024-05-15',10000);
INSERT INTO Sales (SaleID, ProductID, CustomerID, SaleDate, Amount)
values(6,2,5,'2024-05-06',20000);
INSERT INTO Sales (SaleID, ProductID, CustomerID, SaleDate, Amount)
VALUES(7,3,5,'2024-04-01',2000);
INSERT INTO Sales (SaleID, ProductID, CustomerID, SaleDate, Amount)
values(8,4,1,'2024-01-10',3699);
INSERT INTO Sales (SaleID, ProductID, CustomerID, SaleDate, Amount)
values(9,5,3,'2024-02-14',1300);
INSERT INTO Sales (SaleID, ProductID, CustomerID, SaleDate, Amount)
values(10,6,6,'2024-09-30',13000);
INSERT INTO Sales (SaleID, ProductID, CustomerID, SaleDate, Amount)
VALUES(11,7,1,'2024-09-03',1240);
INSERT INTO Sales (SaleID, ProductID, CustomerID, SaleDate, Amount)
values(12,8,5,'2024-08-13',1100);
INSERT INTO Sales (SaleID, ProductID, CustomerID, SaleDate, Amount)
values(13,9,5,'2024-07-01',500);
INSERT INTO Sales (SaleID, ProductID, CustomerID, SaleDate, Amount)
values(14,10,3,'2024-06-03',3699);
INSERT INTO Sales (SaleID, ProductID, CustomerID, SaleDate, Amount)
VALUES(16,10,2,'2024-05-03',3699);
INSERT INTO Sales (SaleID, ProductID, CustomerID, SaleDate, Amount)
VALUES(17,10,5,'2024-01-23',3699);	
INSERT INTO Sales (SaleID, ProductID, CustomerID, SaleDate, Amount)
VALUES(18,10,3,'2024-03-05',3699);

--SHOW ALL RECORDS
select * from sales;


--TOTAL sales for each product
select productid , sum(amount) from sales 
group by productid ;

--TOTAL SALES FOR EACH MONTH
SELECT TO_CHAR(SaleDate, 'YYYY-MM') AS sale_month, SUM(amount) AS sales_made
FROM sales
GROUP BY TO_CHAR(SaleDate, 'YYYY-MM')
ORDER BY sales_made;

--Customers who made more than 5 purchases
SELECT customerid, 
    COUNT(*) AS customer_purchases
FROM sales
GROUP BY customerid
HAVING COUNT(*) > 5;


