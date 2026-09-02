-- SELECT
--     ROUND(SUM(order_total),2) AS Total_Revenue
-- FROM orders;

-- SELECT
--     COUNT(order_id) AS Total_Orders
-- FROM orders;

-- SELECT
--     ROUND(AVG(order_total),2) AS Average_Order_Value
-- FROM orders;

-- SELECT
--     MAX(order_total) AS Highest_Order
-- FROM orders;

-- SELECT
--     MIN(order_total) AS Lowest_Order
-- FROM orders;

-- SELECT
--     payment_method,
--     COUNT(*) AS Total_Orders
-- FROM orders
-- GROUP BY payment_method
-- ORDER BY Total_Orders DESC;

-- SELECT
--     delivery_status,
--     COUNT(*) AS Orders
-- FROM orders
-- GROUP BY delivery_status;

-- SELECT
--     delivery_status,
--     ROUND(SUM(order_total),2) AS Revenue
-- FROM orders
-- GROUP BY delivery_status
-- ORDER BY Revenue DESC;

-- SELECT
--     MONTHNAME(order_date) AS Month,
--     ROUND(SUM(order_total),2) AS Revenue
-- FROM orders
-- GROUP BY MONTH(order_date), MONTHNAME(order_date)
-- ORDER BY MONTH(order_date);

-- SELECT
--     MONTHNAME(order_date) AS Month,
--     COUNT(order_id) AS Orders
-- FROM orders
-- GROUP BY MONTH(order_date), MONTHNAME(order_date)
-- ORDER BY MONTH(order_date);


-- ---------------------CUSTOMER ANALYSIS--------------------------------

-- SELECT COUNT(*) AS Total_Customers
-- FROM customers;

-- SELECT
--     customer_segment,
--     COUNT(*) AS Total_Customers
-- FROM customers
-- GROUP BY customer_segment
-- ORDER BY Total_Customers DESC;

-- SELECT
--     customer_segment,
--     ROUND(AVG(avg_order_value),2) AS Avg_Order_Value
-- FROM customers
-- GROUP BY customer_segment
-- ORDER BY Avg_Order_Value DESC;

-- SELECT
--     customer_name,
--     total_orders
-- FROM customers
-- ORDER BY total_orders DESC
-- LIMIT 10;

-- SELECT
--     customer_name,
--     avg_order_value
-- FROM customers
-- ORDER BY avg_order_value DESC
-- LIMIT 10;

-- SELECT
--     YEAR(registration_date) AS Registration_Year,
--     COUNT(*) AS Customers
-- FROM customers
-- GROUP BY YEAR(registration_date)
-- ORDER BY Registration_Year;

-- SELECT
--     area,
--     COUNT(*) AS Customers
-- FROM customers
-- GROUP BY area
-- ORDER BY Customers DESC
-- LIMIT 10;

-- SELECT
--     pincode,
--     COUNT(*) AS Customers
-- FROM customers
-- GROUP BY pincode
-- ORDER BY Customers DESC
-- LIMIT 10;

-- SELECT
--     ROUND(AVG(total_orders),2) AS Avg_Total_Orders
-- FROM customers;


-- SELECT
--     customer_segment,
--     COUNT(*) AS Customers,
--     ROUND(AVG(total_orders),2) AS Avg_Orders,
--     ROUND(AVG(avg_order_value),2) AS Avg_Order_Value
-- FROM customers
-- GROUP BY customer_segment;



-- --------------------------------------------DELIVERY ANALYSIS--------------------------------------------------

-- SELECT
--     ROUND(AVG(delivery_time_minutes),2) AS Avg_Delivery_Time
-- FROM delivery;

-- SELECT
--     MIN(delivery_time_minutes) AS Fastest_Delivery
-- FROM delivery;

-- SELECT
--     MAX(delivery_time_minutes) AS Slowest_Delivery
-- FROM delivery;

-- SELECT
--     delivery_status,
--     COUNT(*) AS Orders
-- FROM delivery
-- GROUP BY delivery_status;

-- SELECT
--     reasons_if_delayed,
--     COUNT(*) AS Total
-- FROM delivery
-- GROUP BY reasons_if_delayed
-- ORDER BY Total DESC;

-- SELECT
--     ROUND(AVG(distance_km),2) AS Avg_Distance
-- FROM delivery;

-- SELECT
-- CASE
--     WHEN distance_km < 5 THEN '0-5 KM'
--     WHEN distance_km < 10 THEN '5-10 KM'
--     ELSE '10+ KM'
-- END AS Distance_Category,
-- COUNT(*) AS Deliveries
-- FROM delivery
-- GROUP BY Distance_Category;

-- SELECT
-- delivery_status,
-- ROUND(AVG(delivery_time_minutes),2) AS Avg_Time
-- FROM delivery
-- GROUP BY delivery_status;

-- SELECT
-- reasons_if_delayed,
-- COUNT(*) AS Frequency
-- FROM delivery
-- WHERE reasons_if_delayed IS NOT NULL
-- GROUP BY reasons_if_delayed
-- ORDER BY Frequency DESC
-- LIMIT 10;

-- SELECT COUNT(*) AS Long_Distance_Orders
-- FROM delivery
-- WHERE distance_km > 10;

-- SELECT
--     COALESCE(reasons_if_delayed, 'No Delay') AS Delay_Reason,
--     COUNT(*) AS Total
-- FROM delivery
-- GROUP BY Delay_Reason
-- ORDER BY Total DESC;


-- -----------------------------------PRODUCT & INVENTORY ANALYSIS---------------------------------------------------
USE blinkit_db;
-- SELECT COUNT(*) AS Total_Products
-- FROM products;

-- SELECT
-- category,
-- COUNT(*) AS Products
-- FROM products
-- GROUP BY category
-- ORDER BY Products DESC;

-- SELECT
-- brand,
-- COUNT(*) AS Products
-- FROM products
-- GROUP BY brand
-- ORDER BY Products DESC
-- LIMIT 10;

-- SELECT
-- ROUND(AVG(price),2) AS Average_Price
-- FROM products;

-- SELECT
-- ROUND(AVG(margin_percentage),2) AS Average_Margin
-- FROM products;

-- SELECT
-- product_name,
-- margin_percentage
-- FROM products
-- ORDER BY margin_percentage DESC
-- LIMIT 10;

-- SELECT
--     SUM(stock_received) AS Total_Stock
-- FROM inventory
-- WHERE damaged_stock <= stock_received
--   AND stock_received > 0;

-- SELECT
--     SUM(damaged_stock) AS Damaged_Stock
-- FROM inventory
-- WHERE damaged_stock <= stock_received
--   AND stock_received > 0;

-- SELECT
--     ROUND(
--         SUM(damaged_stock) * 100.0 / SUM(stock_received),
--         2
--     ) AS Damage_Percentage
-- FROM inventory
-- WHERE damaged_stock <= stock_received
--   AND stock_received > 0;

-- SELECT
--     product_id,
--     SUM(damaged_stock) AS Damage
-- FROM inventory
-- WHERE damaged_stock <= stock_received
--   AND stock_received > 0
-- GROUP BY product_id
-- ORDER BY Damage DESC
-- LIMIT 10;


-- --------------------------------------------------------FEEDBACK ANALYSIS-----------------------------------------------------------

SELECT
ROUND(AVG(rating),2) AS Average_Rating
FROM feedback;

SELECT
rating,
COUNT(*) AS Reviews
FROM feedback
GROUP BY rating
ORDER BY rating;

SELECT
sentiment,
COUNT(*) AS Reviews
FROM feedback
GROUP BY sentiment;

SELECT
feedback_category,
COUNT(*) AS Total
FROM feedback
GROUP BY feedback_category
ORDER BY Total DESC;

SELECT
YEAR(feedback_date) AS Year,
COUNT(*) AS Reviews
FROM feedback
GROUP BY YEAR(feedback_date);

SELECT
MONTHNAME(feedback_date) AS Month,
COUNT(*) AS Reviews
FROM feedback
GROUP BY MONTH(feedback_date), MONTHNAME(feedback_date)
ORDER BY MONTH(feedback_date);

SELECT
customer_id,
COUNT(*) AS Reviews
FROM feedback
GROUP BY customer_id
ORDER BY Reviews DESC
LIMIT 10;

SELECT
ROUND(
COUNT(*)*100/
(SELECT COUNT(*) FROM feedback),2
) AS Feedback_Percentage
FROM feedback;

SELECT
feedback_category,
ROUND(AVG(rating),2) AS Avg_Rating
FROM feedback
GROUP BY feedback_category;

SELECT
sentiment,
ROUND(AVG(rating),2) AS Avg_Rating
FROM feedback
GROUP BY sentiment;


