-- FOOD SALES AND CUSTOMER ANALYSIS
-- Business Analysis Queries

USE usedb;

-- 1. Total Revenue
SELECT
    SUM(`Order Amount`) AS Total_Revenue
FROM orders;

-- 2. Total Number of Orders
SELECT
    COUNT(*) AS Total_Orders
FROM orders;

-- 3. Total Items Sold
SELECT
    SUM(`Quantity of Items`) AS Total_Items_Sold
FROM orders;

-- 4. Zone-wise Sales
SELECT
    r.Zone,
    SUM(o.`Order Amount`) AS Total_Sales
FROM restaurants r
JOIN orders o
    ON r.RestaurantID = o.RestaurantID
GROUP BY r.Zone
ORDER BY Total_Sales DESC;

-- 5. Restaurants with the Most Orders
SELECT
    r.RestaurantName,
    COUNT(*) AS Total_Orders
FROM restaurants r
JOIN orders o
    ON r.RestaurantID = o.RestaurantID
GROUP BY r.RestaurantName
ORDER BY Total_Orders DESC;

-- 6. Restaurants with the Highest Sales
SELECT
    r.RestaurantName,
    SUM(o.`Order Amount`) AS Total_Sales
FROM restaurants r
JOIN orders o
    ON r.RestaurantID = o.RestaurantID
GROUP BY r.RestaurantName
ORDER BY Total_Sales DESC;

-- 7. Average Food Rating by Cuisine
SELECT
    r.Cuisine,
    ROUND(AVG(o.`Customer Rating-Food`), 2) AS Average_Food_Rating
FROM restaurants r
JOIN orders o
    ON r.RestaurantID = o.RestaurantID
WHERE o.`Customer Rating-Food` BETWEEN 1 AND 5
GROUP BY r.Cuisine
ORDER BY Average_Food_Rating DESC;

-- 8. Customer with the Most Orders
SELECT
    `Customer Name`,
    COUNT(*) AS Total_Orders
FROM orders
GROUP BY `Customer Name`
ORDER BY Total_Orders DESC;
