# E-Commerce Data Analysis

## Project Overview

This project analyzes a multi-table e-commerce dataset to understand sales performance, customer behavior, and product trends.
The goal is to generate actionable insights using SQL and Python.

The dataset includes transactional, behavioral, and review data from an online retail platform.

---

## Dataset Tables

The analysis uses the following tables:

* **users** – customer information such as gender, city, and signup date
* **products** – product details including category, brand, price, and rating
* **orders** – order transactions and order status
* **order_items** – products included in each order
* **events** – user interactions such as product views and cart actions
* **reviews** – customer ratings and feedback on purchased products

---

## Tools & Technologies

* Python
* SQL
* Pandas
* Matplotlib
* Seaborn
* Jupyter Notebook

---

## Project Workflow

1. Data loading and exploration
2. Data cleaning and preprocessing
3. SQL analysis for business metrics
4. Exploratory data analysis using Python
5. Visualization of trends and patterns
6. Deriving business insights

---

## Analysis Performed

### Sales Analysis

* Total revenue calculation
* Average order value
* Monthly order trend

### Product Performance

* Top selling products
* Revenue by product category
* Revenue by brand

### Customer Behavior

* Customer purchase frequency
* Identification of top customers

### Funnel Analysis

* Product views
* Cart actions
* User engagement patterns

### Review Analysis

* Rating distribution
* Average product ratings

---

## Visualizations

### Monthly Order Trend

![Order Trend](images/order_trend.png)

### Revenue by Category

![Category Revenue](images/category_revenue.png)

---

## Key Insights

* Certain product categories generate significantly higher revenue.
* A small number of products contribute to a large share of total sales.
* Most customers place only one order, indicating opportunities for improving customer retention.
* User engagement is highest during product viewing stages.
* Product ratings generally fall between medium and high ranges.

---

## Project Structure

```
ecommerce-data-analysis
│
├── notebooks
│   ecommerce_analysis.ipynb
│
├── sql
│   ecommerce_queries.sql
│
├── images
│   order_trend.png
│   category_revenue.png
│
├── README.md
└── requirements.txt
```

---

## Conclusion

This analysis highlights key product categories, customer purchasing patterns, and engagement trends. The insights can help businesses optimize product strategies, improve customer retention, and increase revenue.
