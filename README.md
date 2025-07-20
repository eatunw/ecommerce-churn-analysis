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

---

## 🛠 Tools & Technologies
| Tool               | Purpose                                      |
|--------------------|----------------------------------------------|
| **SQL**            | Data cleaning, transformation, churn logic   |
| **Power BI**       | Dashboard design, visuals, interactive filters |
| **Git & GitHub**   | Version control and portfolio hosting        |
| **Excel**| Quick initial exploration and sanity checks  |


---

## 📊 Dashboard Preview

![Dashboard Overview](https://github.com/eatunw/ecommerce-churn-analysis/blob/main/e-commerce%20dashboard.png)

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
   - Total vs. churned customers & churn rate (%)  
2. **Active vs. Churned Split** (Pie / Donut)  
3. **Monthly Churn Trend** (Line chart)  
4. **Churn by Country** (Map or bar chart)  
5. **Spend Distribution** (Box plot by churn status)  
6. **Time‑to‑Churn Distribution** (Histogram of days since last purchase)  
7. **Top Products for Retained Users** (Bar chart of top 10 SKUs)  
8. **Purchase Heatmap** (Day of week vs. hour of day intensity)

---

## ✏️ SQL Scripts Overview
- **`data_cleaning.sql`**  
  - Converts `InvoiceDate` strings to DATE  
  - Filters out null `CustomerID` and negative quantities  
  - Deduplicates cancelled transactions  
- **`churn_analysis.sql`**  
  - Derives each customer’s last purchase date  
  - Calculates `DaysSinceLast` and flags `IsChurned` (90+ days)  
  - Aggregates churn metrics and cohorts

---

## 📌 Next Steps
- Add **cohort retention curves** to track multi‑period retention  
- Incorporate **marketing campaign** data to analyze impact on churn  
- Experiment with **machine learning** models for churn prediction  
- Publish an **embedded Power BI report** or migrate to Tableau Public

---

## Contact
  
- **Contact**: [your.email@domain.com](atundeemmanuel7@gmail.com)

---

> _“Data is more than numbers—it’s the voice of your customers. Understanding churn is the first step toward keeping them.”_  
