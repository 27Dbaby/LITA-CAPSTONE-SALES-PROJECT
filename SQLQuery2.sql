CREATE DATABASE Capstone_DB

SELECT * FROM [dbo].[Sales Data]

--------TOTAL SALES BY PRODUCT-------
SELECT PRODUCT , SUM (Total_Revenue) AS   TOTALSALES
FROM [dbo].[Sales Data]
GROUP BY Product

-------- SALES TRANSACTION BY REGION----------
SELECT Region, COUNT(*) AS NUMBEROFSALES
FROM [dbo].[Sales Data]
GROUP BY Region
ORDER BY Region

---------HIGHEST SELLING PRODUCT BY TOTAL SALES VALUE-----------
SELECT Product, SUM (Total_Revenue) AS TOTALSALES
FROM [dbo].[Sales Data]
GROUP BY Product
ORDER BY totalsales DESC

----------------TOTAL REVENUE PER PRODUCT-------------
SELECT Product, SUM(Total_Revenue) AS total_revenue
FROM [dbo].[Sales Data]
GROUP BY Product;

----------MONTHLY SALES TOTALS FOR THE CURRENT YEAR-----------
SELECT MONTH (OrderDate) AS month,
SUM(Total_Revenue) AS monthly_total
FROM [dbo].[Sales Data]
WHERE YEAR(OrderDate) = YEAR(OrderDate)
GROUP BY MONTH(OrderDate)
ORDER BY month;

--------------TOP 5 CUSTOMERS BY TOTAL PURCHASE AMOUNT----------
SELECT customer_id, COUNT(Quantity) AS TOTALPURCHASE
FROM [dbo].[Sales Data]
GROUP BY customer_id
ORDER BY customer_id DESC 

----------PERCENTAGE OF TOTAL SALES CONTRIBUTED BY EACH REGION-----------
SELECT Region, COUNT(Quantity) AS Total_Region_Sales,
(SUM (Total_Revenue) / (SELECT SUM (Total_Revenue) FROM [Sales Data] )) * 100 AS percentage_contribution
FROM [Sales Data]
GROUP BY Region;

-----------PRODUCTS WITH NO SALES IN THE LAST QUARTER-----------
SELECT Product
FROM [Sales Data] 
WHERE Product NOT IN (
    SELECT DISTINCT Product
    FROM [Sales Data]
    WHERE OrderDate >= DATEADD(quarter,-1,'2024-09-30')
);