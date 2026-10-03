-- High Risk LOANS
SELECT status, COUNT(*) AS LOAN_COUNT,
SUM(amount) AS EXPOSURE
FROM LOAN
WHERE STATUS IN ("B", "D")
GROUP BY status;

-- Overall Loan Portfolio
SELECT 
COUNT(*) AS Total_Loans,
SUM(amount) AS Total_Loan_Amount,
AVG(amount) AS Average_Loan_Amount,
MAX(amount) AS Maximum_Loan,
MIN(amount) AS Minimum_Loan
FROM Loan;

-- Loan Status Distribution
SELECT status,
COUNT(*) AS Loan_Count,
SUM(amount) AS Total_Amount,
ROUND(COUNT(*)*100/(SELECT COUNT(*) FROM loan),2) AS Loan_Percentage
FROM loan
GROUP BY status
ORDER BY Loan_Count DESC;


