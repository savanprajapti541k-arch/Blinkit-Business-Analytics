# 🛒 Blinkit Business Analytics Dashboard

## 📌 Project Overview

This project is an end-to-end **Business Analytics Dashboard** built using a Blinkit/Zepto-style e-commerce dataset.

The objective of this project is to analyze **sales performance, customer behavior, delivery performance, inventory management, product performance, and customer feedback** to generate meaningful business insights.

The project includes data cleaning, SQL analysis, Python-based data processing, and an interactive Power BI dashboard.

---

## 🎯 Business Objectives

The main objectives of this project are:

* Analyze overall sales and revenue performance
* Understand order trends over time
* Analyze customer segments and purchasing behavior
* Evaluate delivery performance
* Identify major delivery delay reasons
* Analyze inventory and damaged stock
* Identify top-performing and high-margin products
* Analyze customer ratings and feedback
* Build an interactive business dashboard for decision-making

---

## 🛠️ Tools & Technologies

* **Python** – Data cleaning and preprocessing
* **Pandas** – Data manipulation and analysis
* **NumPy** – Numerical operations
* **Jupyter Notebook** – Exploratory Data Analysis
* **MySQL** – Database management and SQL analysis
* **Power BI** – Interactive dashboard and visualization
* **DAX** – Measures and KPI calculations
* **Microsoft Excel / CSV** – Initial data handling

---

## 📂 Dataset

The project uses multiple datasets representing different parts of a quick-commerce business.

### 1. Customers

Contains customer information and customer segmentation.

**Columns:**

* customer_id
* customer_name
* email
* phone
* address
* area
* pincode
* registration_date
* customer_segment
* total_orders
* avg_order_value

### 2. Orders

Contains order-level sales and delivery information.

**Columns:**

* order_id
* customer_id
* order_date
* promised_delivery_time
* actual_delivery_time
* delivery_status
* order_total
* payment_method
* delivery_partner_id
* store_id

### 3. Products

Contains product details and pricing information.

**Columns:**

* product_id
* product_name
* category
* brand
* price
* mrp
* margin_percentage
* shelf_life_days
* min_stock_level
* max_stock_level

### 4. Delivery Performance

Contains delivery-related performance data.

**Columns:**

* order_id
* delivery_partner_id
* promised_time
* actual_time
* delivery_time_minutes
* distance_km
* delivery_status
* reasons_if_delayed

### 5. Inventory

Contains stock and damaged inventory information.

**Columns:**

* product_id
* date
* stock_received
* damaged_stock

### 6. Customer Feedback

Contains customer ratings, reviews, categories, and sentiment.

**Columns:**

* feedback_id
* order_id
* customer_id
* rating
* feedback_text
* feedback_category
* sentiment
* feedback_date

---

## 🔄 Project Workflow

Raw CSV Data
     ↓
Data Cleaning
     ↓
Python / Pandas Analysis
     ↓
MySQL Database
     ↓
SQL Analysis
     ↓
Power BI Data Model
     ↓
DAX Measures
     ↓
Interactive Dashboard
     ↓
Business Insights



## Data Cleaning

The datasets were cleaned before performing analysis.

Major cleaning activities included:

* Handling missing values
* Checking duplicate records
* Validating numerical columns
* Checking invalid delivery times
* Checking invalid distance values
* Removing inconsistent inventory records
* Validating damaged stock against received stock
* Standardizing categorical values
* Checking date fields
* Creating proper relationships between tables

For inventory analysis, records with invalid stock conditions were identified and cleaned to ensure accurate damage percentage calculations.

---

## MySQL Analysis

MySQL was used to store the cleaned datasets and perform business-related SQL queries.

Some of the analysis performed includes:

* Total revenue
* Total orders
* Average order value
* Highest and lowest order value
* Delivery status analysis
* Revenue by delivery status
* Top customers
* Product performance
* Inventory damage analysis
* Delivery performance
* Delay reason analysis

---

## 📊 Power BI Dashboard

The cleaned data was imported into Power BI to create an interactive business analytics dashboard.

### Dashboard Sections

#### 📈 Sales Overview

Key metrics include:

* Total Revenue
* Total Orders
* Average Order Value
* Highest Order Value
* Lowest Order Value
* Monthly Revenue
* Monthly Orders
* Revenue by Delivery Status

#### 🚚 Delivery Performance

Analysis includes:

* Delivery status distribution
* Average delivery time
* Delivery time distribution
* Delay reasons
* Delivery partner performance
* Delivery distance analysis

#### 👥 Customer Analytics

Analysis includes:

* Total customers
* Customer segmentation
* Customer order behavior
* Average order value by customer segment
* Top customers by total orders
* Top customers by average order value

#### 📦 Product & Inventory Analytics

Analysis includes:

* Total products
* Products by category
* Average product price
* Average margin percentage
* Highest-margin products
* Stock received
* Damaged stock
* Damage percentage
* Top damaged products

#### ⭐ Customer Feedback

Analysis includes:

* Customer ratings
* Feedback categories
* Customer sentiment
* Feedback trends
* Customer satisfaction analysis

---

## 📌 Key KPIs

| KPI                   |         Value |
| --------------------- | ------------: |
| Total Revenue         | 11,009,308.50 |
| Total Orders          |         5,000 |
| Total Customers       |         2,500 |
| Total Products        |           268 |
| Average Order Value   |      2,201.86 |
| Highest Order Value   |      6,721.46 |
| Lowest Order Value    |         13.25 |
| Average Product Price |        488.36 |
| Average Margin        |        27.78% |
| Inventory Damage %    |        14.83% |

---

## 🚚 Delivery Performance

| Delivery Status       | Orders |
| --------------------- | -----: |
| On Time               |  3,470 |
| Slightly Delayed      |  1,037 |
| Significantly Delayed |    493 |

The analysis shows that the majority of orders were delivered **on time**, while a smaller portion experienced delays.

The project also analyzes the major reasons behind delayed deliveries to identify operational improvement opportunities.

---

## 👥 Customer Segmentation

| Customer Segment | Customers |
| ---------------- | --------: |
| Regular          |       639 |
| Premium          |       633 |
| New              |       628 |
| Inactive         |       600 |

Customer segmentation helps understand differences in purchasing behavior and identify opportunities for customer retention and engagement.

---

## 📦 Inventory Analysis

Inventory analysis focuses on:

* Stock received
* Damaged stock
* Damage percentage
* Product-level damage
* Top damaged products

The calculated inventory damage percentage after data cleaning is:

**14.83%**

This metric can help businesses monitor inventory quality and identify products or processes that may require improvement.

---

## 💡 Key Business Insights

Based on the analysis, the dashboard helps identify:

* Overall revenue and order performance
* Monthly sales trends
* Delivery efficiency and delay patterns
* Customer segment performance
* High-value customers
* Products with higher profit margins
* Products contributing to inventory damage
* Customer satisfaction and feedback patterns
* Areas where operational efficiency can be improved

---


## 📁 Project Structure

Blinkit-Business-Analytics/
│
├── data/
│   ├── blinkit_customers.csv
│   ├── blinkit_customers_feedback.csv
│   ├── delivery_performance.csv
│   ├── inventory.csv
│   ├── orders.csv
│   └── products.csv
│
├── python/
│   ├── data_cleaning.py
│   └── analysis.ipynb
│
├── sql/
│   ├── create_tables.sql
│   ├── data_cleaning.sql
│   └── analysis_queries.sql
│
├── powerbi/
│   └── Blinkit_Business_Analytics.pbix
│
├── screenshots/
│   ├── sales_overview.png
│   ├── delivery_performance.png
│   ├── customer_analytics.png
│   ├── product_inventory.png
│   └── customer_feedback.png
│
└── README.md
```

---

## 🧮 Important DAX Measures

### Total Revenue

```DAX
Total Revenue =
SUM(Orders[order_total])
```

### Total Orders

```DAX
Total Orders =
COUNT(Orders[order_id])
```

### Average Order Value

```DAX
Average Order Value =
AVERAGE(Orders[order_total])
```

### Damage Percentage

```DAX
Damage % =
DIVIDE(
    SUM(Inventory[damaged_stock]),
    SUM(Inventory[stock_received])
)
```

---

## 🔗 Data Model

A proper relational data model was created in Power BI to connect the datasets.

The Date table was connected with the Orders table using:

```text
Date[Date]
      ↓
Orders[order_date]
```

This relationship enables proper time-based analysis such as:

* Yearly trends
* Monthly trends
* Revenue over time
* Order trends

---

## 🚀 Skills Demonstrated

This project demonstrates practical experience in:

* Data Cleaning
* Exploratory Data Analysis
* SQL
* MySQL
* Python
* Pandas
* NumPy
* Data Modeling
* Power BI
* DAX
* KPI Development
* Business Intelligence
* Data Visualization
* Customer Analytics
* Sales Analytics
* Inventory Analytics
* Delivery Analytics
* Business Insight Generation

---

## 🎓 Project Purpose

This project was created as a **Data Analytics portfolio project** to demonstrate the complete analytics workflow, from raw data cleaning to business insights and interactive dashboard development.

It showcases how data can be transformed into meaningful insights that can support business and operational decision-making.

---

## 👨‍💻 Author

**Ladva Savan**

Data Analytics Enthusiast | Python | SQL | Power BI | Excel

---

## ⭐ If You Like This Project

If you found this project useful or interesting, consider giving the repository a ⭐ on GitHub.
