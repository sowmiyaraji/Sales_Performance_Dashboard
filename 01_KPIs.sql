-- ==========================================
-- KPI 1 : Total Sales
-- ==========================================

SELECT SUM(Sales) AS Total_Sales
FROM sample_superstore;

-- =========================================
-- KPI 2 : Total Profit
-- =========================================
SELECT SUM(Profit) AS Total_Profit
FROM sample_superstore;

-- =========================================
-- KPI 3 : Total Orders
-- =========================================
SELECT COUNT(`Order ID`) AS Total_Orders
FROM sample_superstore;

-- ======================================
-- KPI 4 : Average Sales Per Order
-- ======================================

SELECT ROUND(AVG(Sales),2) AS Avg_Sales_Per_Order
FROM sample_superstore;

-- ======================================
-- KPI 5 : Average Profit Per Order
-- ======================================

SELECT ROUND(AVG(Profit),2) AS Avg_Profit_Per_Order
FROM sample_superstore;

-- ======================================
-- KPI 6 : Total Sales by Category
-- ======================================

SELECT
    Category,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sample_superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- ======================================
-- KPI 7 : Total Profit by Category
-- ======================================

SELECT
    Category,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sample_superstore
GROUP BY Category
ORDER BY Total_Profit DESC;

-- ======================================
-- KPI 8 : Total Sales by Region
-- ======================================

SELECT
    Region,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sample_superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

-- ======================================
-- KPI 9 : Total Profit by Region
-- ======================================

SELECT
    Region,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sample_superstore
GROUP BY Region
ORDER BY Total_Profit DESC;

-- ======================================
-- KPI 10 : Total Sales by State
-- ======================================

SELECT
    State,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sample_superstore
GROUP BY State
ORDER BY Total_Sales DESC;

SELECT `Order Date`
FROM sample_superstore
LIMIT 10;

-- ======================================
-- KPI 11 : Monthly Sales Trend
-- ======================================

SELECT
    DATE_FORMAT(
        STR_TO_DATE(`Order Date`, '%d-%m-%Y'),
        '%Y-%m'
    ) AS Month,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sample_superstore
GROUP BY Month
ORDER BY Month;

-- ======================================
-- KPI 12 : Top 10 Products by Sales
-- ======================================

SELECT
    `Product Name`,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sample_superstore
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- ======================================
-- KPI 13 : Top 10 Customers by Sales
-- ======================================

SELECT
    `Customer ID`,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sample_superstore
GROUP BY `Customer ID`
ORDER BY Total_Sales DESC
LIMIT 10;

-- ======================================
-- KPI 14 : Average Discount by Category
-- ======================================

SELECT
    Category,
    ROUND(AVG(Discount),2) AS Avg_Discount
FROM sample_superstore
GROUP BY Category
ORDER BY Avg_Discount DESC;

-- ======================================
-- KPI 15 : Top 10 Customers by Sales
-- ======================================

SELECT
    `Customer ID`,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sample_superstore
GROUP BY `Customer ID`
ORDER BY Total_Sales DESC
LIMIT 10;