create table telco_churn(
customerID varchar(150),
gender varchar(50),
SeniorCitizen int,
tenure int,
InternetService varchar(150),
Contract varchar(150),
PaymentMethod varchar(150),
MonthlyCharges decimal(10,2),
TotalCharges decimal(10,2),
Churn varchar(50)
)
--Total customers:
select count(distinct customerID) as total_customers
from telco_churn

--Churned customers:
select count(*) as churned_customers
from telco_churn
where Churn = 'Yes'

--Churn rate

select
sum(case when Churn='Yes' then 1 else 0 end)*100.0
/
count(*) as churn_rate
from telco_churn
--insight: Churn rate is 26.5%, indicating that more than one-quarter of customers leave, which represents a significant retention risk

--Avg tenure(Active vs churnned)
select
Churn,
avg(tenure) as avg_tenure
from telco_churn
group by Churn

--insight: Churned customers have significantly lower average tenure, suggesting that early-stage customers are at the highest risk of churn

--Avg monthly charges (Active vs churnned)

select
Churn,
avg(MonthlyCharges) as avg_monthly_charges
from telco_churn
group by Churn

--insight: Churned customers have higher monthly charges, indicating price sensitivity as a key churn driver

--Contract type and churn:
select
Contract,
count(case when Churn= 'Yes' then 1 end) * 100.0/count(*) as churn_rate
from telco_churn
group by Contract
order by churn_rate desc
--insight: Customers on Month-to-Month contract have the highest churn rate, indicating weaker customer commitment compared to long term contracts