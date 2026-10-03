-- Total Accounts
Select COUNT(*) AS Total_Accounts
FROM account;
 select * FROM client;
 
-- Accounts by District
SELECT d.district_name, 
COUNT(a.account_id) AS Account_Count
FROM account a
JOIN district d
ON a.district_id=d.district_id
GROUP BY d.district_name
ORDER BY Account_Count DESC;

-- Account Frequency per Customer
SELECT client_id, COUNT(account_id) AS Account_Count
FROM disposition
WHERE type="Owner"
GROUP BY client_id
ORDER BY Account_Count DESC;

