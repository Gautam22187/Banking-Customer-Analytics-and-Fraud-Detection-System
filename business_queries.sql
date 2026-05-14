CREATE DATABASE banking_analytics;
USE banking_analytics;

SELECT * FROM transactions LIMIT 5; 

-- Top Fraud Cities
SELECT city, COUNT(*) AS fraud_count
FROM transactions
WHERE is_fraud = 1
GROUP BY city
ORDER BY fraud_count DESC;

-- Revenue by Category
SELECT category, SUM(amt) AS revenue
FROM transactions
GROUP BY category
ORDER BY revenue DESC;

-- High Value Customers
SELECT cc_num, SUM(amt) AS spending
FROM transactions
GROUP BY cc_num
ORDER BY spending DESC
LIMIT 10;