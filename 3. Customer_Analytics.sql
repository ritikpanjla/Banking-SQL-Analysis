
-- 1. Total Customers 5369
SELECT COUNT(*) AS TOTAL_CUSTOMERS
FROM client;

-- 2. Customers By Region
SELECT d.region, COUNT(c.client_id) AS Customer_Count
FROM client c 
JOIN district d
ON c.district_id=d.district_id
GROUP BY d.region
ORDER BY Customer_Count DESC;

-- 3. Customers With Multiple Accounts
SELECT client_id, COUNT(account_id) AS Account_Count
FROM disposition
WHERE type="OWNER"
group by client_id
HAVING COUNT(account_id)>1;

-- Customers Without Loans
SELECT c.client_id
FROM client c
JOIN disposition d
ON c.client_id=d.client_id
LEFT JOIN loan l
ON d.account_id=l.account_id
WHERE l.loan_id is null; 

-- Insights:
-- Identifies customers who have never taken a loan
-- Business Recommendation:
-- These customers represent potential targets for laon promotions and cross-selling campaigns.

