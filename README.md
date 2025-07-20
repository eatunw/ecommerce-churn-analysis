# Ecommerce-Churn-Analysis
This project analyzes customer churn on an e‑commerce platform using a real‑world, partially unclean dataset. It demonstrates how to define, calculate, and visualize churn using SQL for data wrangling and Power BI for dashboarding.


---

## 📊 Dashboard Preview

![Dashboard Overview](Images/dashboard_overview.png)

---

## 🚀 Key Findings
- **Total Customers**: 93,412  
- **Churned (90‑day rule)**: 18,752 ⇒ **20.06% churn rate**  
- **Peak Churn Month**: October 2010 (2,450 customers)  
- **Highest‑risk Countries**:  
  - United Kingdom: 22% churn  
  - Germany: 19% churn  
- **Spend Comparison**: Active customers’ median spend is **£45** vs. churned **£30**  
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
