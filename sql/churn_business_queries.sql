-- Total Customers
SELECT COUNT(*) AS Total_Customers
FROM customer_churn;

-- Overall Churn Rate
SELECT
ROUND(
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),
2
) AS Churn_Rate
FROM customer_churn;

-- Contract-wise Churn
SELECT
Contract,
COUNT(*) AS Total_Customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned_Customers
FROM customer_churn
GROUP BY Contract;

-- Gender-wise Churn
SELECT
gender,
COUNT(*) AS Total_Customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned_Customers
FROM customer_churn
GROUP BY gender;

-- Senior Citizen Churn
SELECT
SeniorCitizen,
COUNT(*) AS Total_Customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned_Customers
FROM customer_churn
GROUP BY SeniorCitizen;

-- Internet Service vs Churn
SELECT
InternetService,
COUNT(*) AS Total_Customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned_Customers
FROM customer_churn
GROUP BY InternetService;

-- Payment Method vs Churn
SELECT
PaymentMethod,
COUNT(*) AS Total_Customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned_Customers
FROM customer_churn
GROUP BY PaymentMethod;

-- Average Monthly Charges
SELECT
Churn,
ROUND(AVG(MonthlyCharges),2) AS Avg_Monthly_Charges
FROM customer_churn
GROUP BY Churn;

-- Average Tenure
SELECT
Churn,
ROUND(AVG(tenure),2) AS Avg_Tenure
FROM customer_churn
GROUP BY Churn;

-- Top 10 Highest Paying Customers
SELECT
customerID,
MonthlyCharges,
TotalCharges
FROM customer_churn
ORDER BY MonthlyCharges DESC
LIMIT 10;