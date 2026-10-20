
# E-Commerce Data Engineering Pipeline

## Project Overview

This project demonstrates an end-to-end data engineering workflow using the Brazilian Olist E-Commerce Dataset.

The goal is to transform raw e-commerce data into structured, analysis-ready datasets and generate actionable business insights.

The project covers:
- **Python & Pandas:** Data exploration, cleaning, and transformation
- **PostgreSQL:** Relational database design and data storage
- **SQL:** Business analysis and data validation
- **Power BI:** Interactive sales and customer insights dashboard

## Dataset

**Source:** Brazilian E-Commerce Public Dataset by Olist (Kaggle)

The complete dataset contains 99,441 orders.

The Power BI dashboard analyzes 94,972 orders within the selected reporting period (March 19, 2017 – August 31, 2018).



## Data Pipeline Architecture

The project follows an end-to-end data engineering workflow:

Raw CSV Files (Olist Dataset)
        ↓
Data Exploration (Jupyter Notebook)
        ↓
Data Cleaning & Transformation (Python, Pandas)
        ↓
Cleaned CSV Files
        ↓
PostgreSQL Database (8 Tables)
        ↓
SQL Business Analysis
        ↓
Power BI Interactive Dashboard

### Pipeline Stages

1. **Data Ingestion:** Imported the Olist e-commerce CSV datasets.
2. **Data Cleaning:** Handled missing values, corrected data types, standardized fields, and prepared the datasets.
3. **Data Storage:** Loaded cleaned datasets into 8 relational PostgreSQL tables.
4. **Data Analysis:** Used SQL to analyze sales, orders, payments, delivery performance, and customer reviews.
5. **Data Visualization:** Built an interactive Power BI dashboard with KPIs, charts, and date filtering.

## Project Structure

```text
ecommerce-data-pipeline/
│
├── data/
│   ├── raw/              # Original Olist CSV files
│   └── processed/        # Cleaned datasets
│
├── notebooks/
│   ├── 01_data_exploration.ipynb
│   └── 02_data_exploration.ipynb
│
├── sql/
│   ├── 01_create_tables.sql
│   ├── 02_data_validation.sql
│   └── 03_business_analysis.sql
│
├── dashboard/
│   └── Ecommerce_Sales_Dashboard.pbix
│
├── src/
│
└── README.md
```


## Power BI Dashboard

The interactive Power BI dashboard provides insights into e-commerce sales, order performance, customer satisfaction, and payment behavior.

### Key Performance Indicators

| KPI | Value |
|-----|-------|
| Total Orders | 94,972 |
| Total Sales (Including Shipping) | 12.95M BRL |
| Average Delivery Time | 12.06 days |

*Results reflect the selected reporting period: March 19, 2017 – August 31, 2018.*

### Dashboard Features

- Monthly Sales Trend
- Top 10 Best-Selling Product Categories
- Customer Satisfaction Ratings
- Payment Methods Distribution
- Interactive Date Range Filter

### Business Insights

- Credit cards are the most commonly used payment method.
- Health & Beauty is among the highest-performing product categories.
- Customer satisfaction can be evaluated using review scores from 1 to 5.
- Delivery performance is monitored through average delivery time.
