create database Telco;
use Telco;
create table Telco_cleaned(
customer_id varchar(50),
gender varchar(20),
senior_citizen varchar(10),
partners varchar(10),
dependents varchar(10),
tenure int,
PhoneService varchar(10),
MultipleLines varchar(20),
InternetService varchar(20),
OnlineSecurity varchar(20),
OnlineBackup varchar(20),
DeviceProtection varchar(20),
TechSupport varchar(20),
StreamingTV varchar(20),
StreamingMovies varchar(20),
Contract varchar(30),
PaperlessBilling varchar(10),
PaymentMethod varchar(30),
MonthlyCharges float,
TotalCharges float,
Churn varchar(15),
ChurnRisk varchar(15)
);

load data local infile "C:/Users/ayush kumar gupta/OneDrive/Desktop/telco-customer-churn-analysis/data/2. Telco_cleaned.csv"
into table Telco_cleaned
fields terminated by ','
enclosed by'"'
lines terminated by '\n'
ignore 1 rows;

select*from telco_cleaned;

select
churnrisk,
round(avg(case when churn='yes' then 1 else 0 end )*100,2)as churn_rate from telco_cleaned
group by churnrisk
order by churn_rate desc;

select
contract,
round(avg(case when churn='yes' then 1 else 0 end )*100,2)as churn_rate from telco_cleaned
group by contract
order by churn_rate desc;


select
paymentmethod,
round(avg(case when churn='yes' then 1 else 0 end )*100,2)as churn_rate from telco_cleaned
group by paymentmethod
order by churn_rate desc;


select case when
contract='month-to-month' and monthlycharges>70 then 'high risk'
when contract='month-to-month'  then 'medium risk' else 'low risk' end as segment,
round(sum(monthlycharges),2)as revenue_at_risk,
round(avg(case when churn='yes' then 1 else 0 end )*100,2)as churn_rate from telco_cleaned
group by segment 
order by revenue_at_risk desc;


select
contract,
paymentmethod,
round(avg(case when churn='yes' then 1 else 0 end )*100,2)as churn_rate from telco_cleaned
group by paymentmethod,contract
order by churn_rate desc;



select case when tenure<12 then '0-1 year'
when tenure<24 then '0-1 year'
when tenure<48 then '2-4 year'
else '4+ year' end as tenure_group,
round(avg(case when churn='yes' then 1 else 0 end)*100,2) as churn_rate from telco_cleaned
group by tenure_group
order by churn_rate desc;