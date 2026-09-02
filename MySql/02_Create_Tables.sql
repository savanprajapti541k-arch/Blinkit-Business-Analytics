CREATE TABLE customers ( 
customer_id INT PRIMARY KEY, 
customer_name VARCHAR(100), 
email VARCHAR(100),
phone VARCHAR(20), 
address VARCHAR(255), 
area VARCHAR(100), 
pincode VARCHAR(10), 
registration_date DATE, 
customer_segment VARCHAR(50), 
total_orders INT, 
avg_order_value DECIMAL(10,2) ); 

CREATE TABLE products (
 product_id INT PRIMARY KEY, 
 product_name VARCHAR(150), 
 category VARCHAR(100), 
 brand VARCHAR(100), 
 price DECIMAL(10,2), 
 mrp DECIMAL(10,2), 
 margin_percentage DECIMAL(5,2), 
 shelf_life_days INT, 
 min_stock_level INT, 
 max_stock_level INT ); 
 
 CREATE TABLE orders ( 
 order_id BIGINT PRIMARY KEY, 
 customer_id INT, 
 order_date DATE, 
 promised_delivery_time DATETIME, 
 actual_delivery_time DATETIME, 
 delivery_status VARCHAR(50), 
 order_total DECIMAL(10,2), 
 payment_method VARCHAR(50), 
 delivery_partner_id INT, 
 store_id INT, 
 
 FOREIGN KEY (customer_id) 
 REFERENCES customers(customer_id) 
 ); 
 
 CREATE TABLE delivery ( 
 order_id BIGINT PRIMARY KEY, 
 delivery_partner_id INT, 
 promised_time DATETIME, 
 actual_time DATETIME, 
 delivery_time_minutes INT, 
 distance_km DECIMAL(5,2), 
 delivery_status VARCHAR(50), 
 reasons_if_delayed VARCHAR(255), 
 FOREIGN KEY (order_id) 
 REFERENCES orders(order_id) 
 ); 
 
 CREATE TABLE inventory ( 
 product_id INT, 
 date DATE, 
 stock_received INT, 
 damaged_stock INT, 
 FOREIGN KEY (product_id) 
 REFERENCES products(product_id) 
 ); 
 
 CREATE TABLE feedback ( 
 feedback_id INT PRIMARY KEY, 
 order_id BIGINT, 
 customer_id INT, 
 rating INT, 
 feedback_text TEXT, 
 feedback_category VARCHAR(100), 
 sentiment VARCHAR(50), 
 feedback_date DATE,
 
 FOREIGN KEY (order_id) 
 REFERENCES orders(order_id),
 
 FOREIGN KEY (customer_id) 
 REFERENCES customers(customer_id) 
 );