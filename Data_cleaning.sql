-- DATA CLEANING

USE usedb;

-- 1. Check the structure of the orders table
DESCRIBE orders;

-- 2. Check the structure of the restaurants table
DESCRIBE restaurants;

-- 3. Check for NULL values in orders
SELECT *
FROM orders
WHERE OrderID IS NULL
   OR `Customer Name` IS NULL
   OR `Restaurant ID` IS NULL
   OR `Order Amount` IS NULL;

-- 4. Check for NULL values in restaurants
SELECT *
FROM restaurants
WHERE RestaurantID IS NULL
   OR RestaurantName IS NULL
   OR Cuisine IS NULL;

-- 5. Check for duplicate Order IDs
SELECT OrderID, COUNT(*) AS Count
FROM orders
GROUP BY OrderID
HAVING COUNT(*) > 1;


-- 6. Check for duplicate Restaurant IDs
SELECT RestaurantID, COUNT(*) AS Count
FROM restaurants
GROUP BY RestaurantID
HAVING COUNT(*) > 1;

-- 7. Check invalid order amounts
SELECT *
FROM orders
WHERE `Order Amount` < 0;

-- 8. Changing Data Types
ALTER TABLE orders
MODIFY COLUMN OrderID VARCHAR(20) ;

ALTER TABLE orders
MODIFY COLUMN `Payment Mode` VARCHAR(50) ;

ALTER TABLE orders
MODIFY COLUMN `Customer Name` VARCHAR(50) ;

ALTER TABLE restaurants
MODIFY COLUMN RestaurantName VARCHAR(50) ;

SELECT `Order Date`,
str_to_date(`Order Date`,'%m/%d/%y %H%i') AS converted_date
FROM orders;

-- 9. Check invalid food ratings
SELECT *
FROM orders
WHERE `Customer Rating-Food` NOT BETWEEN 1 AND 5
  AND `Customer Rating-Food` IS NOT NULL;

-- 10. Check invalid delivery ratings
SELECT *
FROM orders
WHERE `Customer Rating-Delivery` NOT BETWEEN 1 AND 5
  AND `Customer Rating-Delivery` IS NOT NULL;

-- 11. ---------Checking spaces-----------------------

SELECT DISTINCT `Payment Mode` FROM orders ;

SELECT `Customer Name`
FROM orders
WHERE `Customer Name` <> TRIM(`Customer Name`) ;
 
SELECT DISTINCT LOWER(`Customer Name`) AS customer_name
FROM orders
ORDER BY customer_name ;

SELECT RestaurantName FROM restaurants
WHERE RestaurantName <> TRIM(RestaurantName) ;

SELECT Cuisine FROM Restaurants
WHERE Cuisine <> TRIM(Cuisine) ;

SELECT Zone FROM Restaurants
WHERE Zone <> TRIM(Zone) ;

SELECT Category FROM Restaurants
WHERE Category <> TRIM(Category) ;
