# E‑commerce Customer Churn Analysis

This project analyzes customer churn on an e‑commerce platform using a real‑world, partially unclean dataset. It demonstrates how to define, calculate, and visualize churn using **SQL** for data wrangling and **Power BI** for dashboarding.

---

## 🔍 Problem Statement
E‑commerce businesses lose revenue when customers stop purchasing (“churn”). We ask:
- **Who** is churning?
- **When** are they churning?
- **Which behaviors** or segments predict higher churn?
- **Where** (geographically) is churn most acute?

---

## 📦 Dataset
- **Source**: Kaggle – E‑commerce Data  
  https://www.kaggle.com/datasets/carrie1/ecommerce-data  
- **Size**: ~500 K rows  
- **Key Fields**:  
  - `InvoiceNo`, `StockCode`, `Description`  
  - `Quantity`, `InvoiceDate` (MM/DD/YYYY)  
  - `UnitPrice`, `CustomerID`, `Country`  
- **Initial Issues**:  
  - Missing `CustomerID` values  
  - Duplicate or cancelled invoices (negative `Quantity`)  
  - Inconsistent date formats  

All data cleaning—filtering nulls, handling negative quantities, standardizing dates—was done via SQL scripts in the **`SQL/`** folder. 
And you can find the cleaned dataset in the **`xlsx/`** folder.

---

## 🛠 Tools & Technologies
| Tool               | Purpose                                       |
|--------------------|-----------------------------------------------|
| **SQL**            | Data cleaning, transformation, churn logic    |
| **Power BI**       | Dashboard design, visuals, interactive filters|
| **Git & GitHub**   | Version control and portfolio hosting         |
| **Excel**          | Quick initial exploration and sanity checks   |


---

## 📊 Dashboard Preview

![Dashboard Overview](https://github.com/eatunw/ecommerce-churn-analysis/blob/main/e-commerce%20dashboard.png?raw=true)

---

## 🚀 Key Findings
- **Countries with the highest churn**: Australia, France, Germany, Netherlands and Norway top the list. Their churn rates approach 
100, meaning almost all customers in those markets bought only once during the observed period  
- **Total quantity sold by country**: As expected, the United Kingdom dominates overall volume, followed (at a much smaller scale) by Ireland, Norway, France and Germany.  
- **Average unit price by product**: The ten products shown command the highest mean prices; they are typically large decorative items (e.g., wall clocks, cake stands) rather than low-ticket trinkets  
- **Top-5 products by sales value**: High-velocity + mid-to-high price point gives these five items the largest revenue contributions. 
- **Unique customers per country**: Again the United Kingdom is by far the largest base, but several EU markets contribute dozens of unique buyers each.
- **Average churn rate**: Overall, about 86% of customers are single-purchase, so retention efforts have huge room for improvement.
- **Products driving repeat purchases**: Repeat-customer spend concentrates around decorative homeware (e.g., Red Woolly Hottie, Regency Cake-stand, Babushka Boxes, Chilli Lights, Hanging Heart T-Light Holder). These items resonate strongly enough for customers to buy again.
- **Behavioral Insight**: Customers with more than 3 distinct purchase days are **70% less** likely to churn.

---

## 📈 Visualizations & Analysis
1. **KPI Cards**  
   - ![Total vs. churned customers & churn rate (%)](https://github.com/eatunw/ecommerce-churn-analysis/blob/main/Screenshot%202025-07-20%20132000.png?raw=true)  
2. **Top 10 Countries by Churn Rate**
   - ![image](https://github.com/eatunw/ecommerce-churn-analysis/blob/main/Screenshot%202025-07-20%20132000.png?raw=true)  
3. **Total Number of Sales Over Time**
   - ![image](https://github.com/eatunw/ecommerce-churn-analysis/blob/main/Screenshot%202025-07-20%20132752.png?raw=true)  
4. **Unique Customer Per Country**
   - ![image](https://github.com/eatunw/ecommerce-churn-analysis/blob/main/Screenshot%202025-07-20%20131909.png?raw=true)  
5. **Top Quantity Sold**
   - ![image](https://github.com/eatunw/ecommerce-churn-analysis/blob/main/Screenshot%202025-07-20%20131711.png?raw=true)  
6. **Average Unit Price**
   - ![image](https://github.com/eatunw/ecommerce-churn-analysis/blob/main/Screenshot%202025-07-20%20131745.png?raw=true)  
7. **Top Products for Retained Users**
   - ![image](https://github.com/eatunw/ecommerce-churn-analysis/blob/main/Screenshot%202025-07-20%20131835.png?raw=true)  
  

---

## ✏️ SQL Scripts Overview
- **`data_cleaning.sql`**  
  - I converted `InvoiceDate` strings to DATETIME  
  - I filtered out null `CustomerID` and negative quantities  
  - Deduplicates cancelled transactions  
- **`churn_analysis.sql`**  
  - I derived each customer’s last purchase date  
  - I calculated `DaysSinceLast` and flags `IsChurned` (90+ days)  
  - I got aggregates churn metrics and cohorts


---

## Contact
  
- **Contact**: [EMAIL](atundeemmanuel7@gmail.com)

---

> _“Data is more than numbers—it’s the voice of your customers. Understanding churn is the first step toward keeping them.”_  
