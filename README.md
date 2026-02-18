# 📊 Digital Marketing Data Analytics Project (MySQL)

## 📌 Project Overview

This project simulates a real-world Digital Marketing Analytics environment.  

The objective is to analyze campaign performance, advertising effectiveness, and website experiments using SQL in MySQL.

This project demonstrates how data-driven insights can help a business:

- Optimize marketing spend
- Improve return on ad spend (ROAS)
- Identify high-performing campaigns
- Evaluate A/B testing results
- Monitor digital performance metrics

---

## 🏢 Business Scenario

A company runs multiple digital marketing campaigns across channels such as:

- Google
- Meta (Facebook)
- TikTok

Each campaign contains multiple ads targeting different audiences and devices.

The business wants to answer questions like:

- Which campaign generates the highest revenue?
- Which channel has the best ROAS?
- Are we overspending compared to our budget?
- Which device performs better?
- Which A/B test variant performs better?

---

## 🗂 Database Structure

The database consists of four tables:

### 1️⃣ campaigns
Stores high-level campaign information.

- campaign_id
- campaign_name
- channel
- product_type
- start_date
- end_date
- total_budget

---

### 2️⃣ ads
Stores ad-level details.

- ad_id
- campaign_id (Foreign Key)
- ad_name
- target_audience
- device_type

---

### 3️⃣ daily_performance
Stores daily advertising performance metrics.

- performance_id
- ad_id (Foreign Key)
- performance_date
- impressions
- clicks
- conversions
- revenue
- spend

---

### 4️⃣ website_experiments
Stores A/B test experiment results.

- experiment_id
- experiment_name
- variant
- test_date
- users
- conversions

---

## 🛠 Skills Demonstrated

- SQL Joins (INNER JOIN, LEFT JOIN)
- Aggregations (SUM, COUNT, AVG)
- GROUP BY & HAVING
- Business KPI calculations:
  - CTR
  - Conversion Rate
  - ROAS
  - CPA
- Budget vs Spend Analysis
- A/B Test Evaluation
- Data-driven business insights

---

## 📊 Example Business Questions Solved

- Total revenue per campaign
- ROAS by channel
- Campaigns exceeding budget
- Best-performing device type
- A/B test conversion comparison
- Campaign performance ranking

---

## 📈 Key Metrics Used

- CTR = Clicks / Impressions
- Conversion Rate = Conversions / Clicks
- ROAS = Revenue / Spend
- CPA = Spend / Conversions

---

## 💡 Tools Used

- MySQL
- MySQL Workbench
- GitHub

---

## 🎯 Project Goal

The goal of this project is to demonstrate practical SQL skills in a business context and simulate real-world digital data analytics workflows.

---

## 🚀 Future Improvements

- Add Power BI dashboard
- Add Python-based analysis
- Add statistical significance testing for A/B tests
- Add larger dataset simulation

---

## 👤 Author

B M Ashik Mahmud
[LinkedIn]( https://www.linkedin.com/in/bmmahmud/)
Data Analyst
