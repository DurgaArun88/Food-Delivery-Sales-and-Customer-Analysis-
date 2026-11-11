# Food-Delivery-Sales-and-Customer-Analysis- using SQL and Google sheet


## Project Overview
This project analyses restaurant order data to understand sales performance, customer ordering behaviour, restaurant performance, cuisine preferences and ordering patterns.

The objective is to extract meaningful business insights using SQL and present the findings through a Google Sheets dashboard.

## Tools and Technologies
- **MySQL 8.0** – Data cleaning, transformation and analysis
- **Google Sheets** – Data visualization and dashboard creation
- **GitHub** – Project documentation and version control

## Dataset Description

The project uses two tables:

### 1. Orders
Contains order-level information, including:
- Order ID
- Customer Name
- Restaurant ID
- Order Date
- Quantity of Items
- Order Amount
- Payment Mode
- Customer Food Rating
- Customer Delivery Rating
- Delivery Time Taken

### 2. Restaurants
Contains restaurant information, including:
- Restaurant ID
- Restaurant Name
- Cuisine
- Zone
- Category

The Restaurant ID column is used to connect the two tables.

## Data Cleaning and Preparation

The following data quality checks and preparation steps were performed:
- Checked missing values and duplicate records.
- Examined column data types.
- Converted order dates into DATETIME format.
- Checked invalid order amounts and item quantities.
- Checked food and delivery ratings.
- Checked customer names for unwanted leading and trailing spaces.
- Validated restaurant IDs between the Orders and Restaurants tables.

## SQL Concepts Used

- SELECT and WHERE
- ORDER BY and LIMIT
- GROUP BY and HAVING
- Aggregate functions: SUM(), COUNT(), AVG(), MAX()
- JOIN operations
- Common Table Expressions (CTEs)
- CASE statements
- STR_TO_DATE()
- ROUND()
- Data type conversion and ALTER TABLE

## Business Questions and Analysis

The project addresses the following business questions:

1. What is the total revenue generated?
2. How many orders were received?
3. How many items were sold?
4. Which restaurants received the highest number of orders?
5. Which restaurants generated the highest sales?
6. Which zone generated the highest revenue?
7. Which cuisine received the highest average food rating?
8. Which customers placed the most orders?
9. Which time of day received the highest number of orders?
10. What are the customer ordering patterns?

## Key Business Insights

### Overall Performance
- Total Revenue: ₹2,99,071
- Total Orders: 500
- Total Items Sold: 2,326

### Restaurant Performance
- The Cave Hotel received the highest number of orders, with 157 orders.
- Veer Restaurant generated the highest sales, amounting to ₹19,168.

### Zone-wise Sales
- Zone D generated the highest revenue of ₹1,28,163.
- Zone A generated ₹40,833.
- Zone B generated ₹77,001.
- Zone C generated ₹53,074.

### Cuisine Analysis
- North Indian cuisine had the highest displayed average food rating of 4 out of 5.
- Other cuisines displayed an average rating of 3 after rounding to whole numbers.

### Customer Ordering Analysis
- A Customer named Srini placed 168 orders, the highest among all customers.
  
### Time-of-Day Analysis
Out of 500 orders:
- Afternoon: 237 orders (47.4%)
- Night: 190 orders (38%)
- Morning: 73 orders (14.6%)

Afternoon was the busiest ordering period.

## Business Recommendations

Based on the analysis:

1. Restaurants can allocate more staff and inventory during afternoon and night hours.
2. Management can study the successful performance of Zone D to identify opportunities in other zones.
3. Restaurants can investigate customer feedback to improve cuisine ratings.
4. Restaurants can study the sales strategies of high-performing restaurants.
5. Businesses can use customer ordering patterns to plan targeted promotions.

## Dashboard

The SQL query results were exported as CSV files and imported into Google Sheets to create a dashboard containing:
- Revenue, total items sold and total orders KPIs
- Restaurant-wise order analysis
- Restaurant-wise sales analysis
- Zone-wise sales analysis
- Cuisine rating analysis
- Customer ordering analysis
- Time-of-day analysis

## Conclusion

This project provided practical experience in using SQL to clean, transform and analyse relational data. It helped identify important sales trends, customer ordering patterns and restaurant performance indicators.

The analysis demonstrates how data can support business decision-making through SQL queries and visual reporting.
