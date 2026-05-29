# Telco Customer Churn Analysis

## Project Overview

Customer churn is one of the biggest challenges for telecom companies because losing customers directly impacts revenue and long-term growth. In this project, I analyzed customer churn behavior using Python, SQL, and Power BI to identify major churn drivers, understand high-risk customer segments, and provide business recommendations for improving customer retention.

The project focuses on understanding:

* Which customers are most likely to churn
* What factors contribute to churn
* Which customer segments create the highest revenue risk
* What actions the business can take to reduce churn

---

# Tools & Technologies Used

* Python (Pandas, NumPy)
* SQL
* Power BI
* Jupyter Notebook

---

# Dataset Information

The dataset contains telecom customer information including:

* Customer tenure
* Contract type
* Payment method
* Monthly charges
* Churn status
* Customer demographics and services

Target Variable:

* Churn (Yes/No)

---

# Project Workflow

## 1. Data Cleaning using Python

Performed data preprocessing and cleaning steps such as:

* Handling missing values
* Checking data types
* Preparing dataset for analysis

---

## 2. Feature Engineering

Created a custom churnrisk column using rule-based segmentation:

* Low Risk
* Medium Risk
* High Risk

The segmentation was based on:

* Customer tenure
* Contract type
* Monthly charges

---

## 3. Exploratory Data Analysis (Python)

Performed analysis using:

* Crosstabs
* GroupBy operations
* Churn distribution analysis

Key analysis areas:

* Churn vs Contract Type
* Churn vs Payment Method
* Churn vs Tenure Group
* Churn Risk Segmentation

---

## 4. SQL Analysis

Performed SQL-based business analysis including:

* Churn rate by contract type
* Churn rate by payment method
* Revenue at risk analysis
* Contract + payment method churn analysis
* Customer segmentation analysis

---

# Key Insights

## Contract Type vs Churn

* Month-to-month customers showed the highest churn rate at 42.71%
* Two-year contract customers had the lowest churn rate at 2.83%

### Business Insight

Customers with short-term contracts are more likely to leave due to lower commitment and higher flexibility.

---

## Payment Method vs Churn

* Electronic check users had the highest churn rate at 45.29%
* Automatic credit card users had the lowest churn rate at 15.24%

### Business Insight

Customers using automatic payment methods showed better retention behavior compared to manual payment users.

---

## Tenure Group vs Churn

* Customers with 0-1 year tenure had the highest churn rate at 41.98%
* Customers with 4+ years tenure had the lowest churn rate at 9.64%

### Business Insight

Most churn occurs during the early customer lifecycle stage.

---

## Revenue & Risk Segmentation

| Segment     | Revenue   | Churn Rate |
| ----------- | --------- | ---------- |
| Low Risk    | 198822.45 | 6.76%      |
| Medium Risk | 73769.35  | 30.93%     |
| High Risk   | 183524.80 | 52.69%     |

### Business Insight

High-risk customers contribute a significant amount of revenue, making retention strategies critical for reducing financial loss.

---

# Business Recommendations

* Encourage month-to-month customers to switch to long-term contracts using discounts and bundled offers.
* Promote automatic payment methods to improve customer retention.
* Improve onboarding and engagement for new customers during the first year.
* Focus retention campaigns on high-risk customer segments.
* Provide loyalty benefits for customers with higher monthly charges.

---

# Power BI Dashboard

Built an interactive Power BI dashboard including:

* KPI Cards
* Churn Rate Analysis
* Revenue at Risk Analysis
* Contract & Payment Method Analysis
* Interactive Filters and Cross Filtering

Dashboard Features:

* Dynamic filtering
* Interactive visuals
* Revenue-focused analysis
* Customer segmentation insights

---

# Conclusion

This project helped identify the major factors contributing to telecom customer churn. The analysis showed that contract type, payment method, customer tenure, and high-risk customer behavior play a significant role in customer retention and revenue stability.

The project demonstrates practical skills in:

* Data Cleaning
* SQL Analysis
* Business Intelligence
* Data Visualization
* Customer Segmentation
* Business Insight Generation

---

