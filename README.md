## Project Overview
This project explores customer churn in the telecom industry using a combination of Excel, SQL, Python, and Power BI. The goal is to identify key drivers of churn, uncover actionable insights, and present them through interactive dashboards and visual storytelling

## Objectives
* Explore patterns in customer contracts, services, and payment methods to identify churn drivers.
* Measure churn rates across different segments (tenure, internet service, monthly charges) to highlight risk areas.
* Translate raw data into clear, storytelling visuals that explain why customers churn and how retention can be improved.

## Tools and Technology
* Excel - Initial data exploration, cleaning, and validation
* SQL Server - Data import, schema design, queries for segmentation and aggregation
* Python(Pandas, NumPy, Matplotlib, Seaborn) - Exploratory Data Analysis (EDA)
* Power BI - Interactive dashboards and data visualization

## Dataset
* Source: Telco customer churn dataset
* Records include:
  * Customers
  * Charges(monthly and total)
  * Payment method
  * Internet service
  * Tenure
  * Churn(yes/no)
  * Contract type
## Data Cleaning(Excel)
* Removed duplicates
* Converted tenure and charges columns to numeric types
* checked for spelling issues in churn column
* Saved cleaned data as Excel file for downstream analysis

## SQL Analysis
* Created table with appropriate data types
* Calculated churn rate by contract type
* Average tenure(Active vs Churned)
* Average monthly charges(Active vs Churned)

## Exploratory Data Analysis(Python)
* Churn distribution
* Tenure distribution by churn
* Monthly charged by churn
* Churn rate by contract type
* Churn rate by payment method
* Churn by internet service type

## Power BI Dashboard
The dashboard consists of two pages
### Page 1 - ![Churn Overview](images/overview.png)
