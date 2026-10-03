SELECT d.region,
COUNT(DISTINCT c.client_id) AS Customers,
COUNT(DISTINCT a.account_id) AS Accounts,
COUNT(DISTINCT l.loan_id) AS Loans,
SUM(l.amount) AS Total_Loan_Amount
FROM client c
JOIN district d
ON c.district_id=d.district_id
LEFT JOIN account a
ON c.district_id=a.district_id
LEFT JOIN loan l
ON a.account_id=l.account_id
GROUP BY d.region
ORDER BY Total_Loan_Amount DESC;