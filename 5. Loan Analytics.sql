-- 11. LOAN STATUS
SELECT status, COUNT(*) as loan_count,
SUM(amount) AS Total_amount
FROM loan
group by status;

-- 12. Risk Loans
SELECT loan_id, account_id, amount, status
FROM loan
where status in ("B" , "D");

-- Insights:
-- Highlights loans classified as high risk (Status B and D)
-- Business Recommendation:
-- High-risk loans should be monitored closely to reduce potential financial losses and improve collection strategies

-- 13. LOAN PAYMENT ANALYSIS
SELECT account_id, amount, payments,
ROUND(amount/payments,2) AS Monthly_Payment
FROM loan;
