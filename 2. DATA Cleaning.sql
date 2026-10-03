-- Duplicate Check 
SELECT account_id, COUNT(*) FROM account
GROUP BY account_id HAVING COUNT(*)>1;

SELECT card_id, COUNT(*) FROM card
GROUP BY card_id HAVING COUNT(*)>1;

SELECT client_id, COUNT(*) FROM client
GROUP BY client_id HAVING COUNT(*) >1;

SELECT disp_id, COUNT(*) FROM disposition
GROUP BY disp_id HAVING COUNT(*)>1;


-- i need to ask this


SELECT A1, COUNT(*) FROM district
GROUP BY A1 HAVING COUNT(*)>1;

SELECT loan_id, COUNT(*) FROM loan
group by loan_id having COUNT(*) >1;

SELECT order_id, COUNT(*) FROM `order`
GROUP BY order_id HAVING COUNT(*)>1;

-- Null check 
SELECT COUNT(*) FROM account
WHERE account_id is NULL;

SELECT COUNT(*) FROM card
where card_id is null;

SELECT COUNT(*) FROM client
where client_id is null;

SELECT COUNT(*) FROM disposition
where disp_id is null;

SELECT COUNT(*) FROM district
where A1 is NUll;

SELECT COUNT(*) FROM loan 
WHERE loan_id IS NULL;

SELECT COUNT(*) FROM `order`
where order_id is null;

-- Rename District Table Columns
ALTER TABLE district rename column A1 to district_id;

ALTER TABLE district rename column A2 to district_name;

ALTER TABLE district rename column A3 to region;

ALTER table district rename column A4 to  population; 

ALTER TABLE district rename column A5 to Municipalities_LT_500;

ALTER TABLE district rename column A6 to Municipalities_LT_500_1999;

ALTER TABLE district rename column A7 to Municipalities_LT_2000_9999;

ALTER TABLE district rename column A8 to Municipalities_GT_10000;

ALTER TABLE district rename column A9 to Number_Of_Cities;

ALTER TABLE district rename column A10 to Urban_Population_Percentage;

ALTER TABLE district rename column A11 to AVG_SALARY;

ALTER TABLE district rename column A12 to Unemployment_Rate_1995;

ALTER TABLE district rename column A13 to Unemployment_Rate_1996;

ALTER TABLE district rename column A14 to Entrepreneurs_Per_1000;

ALTER TABLE district rename column A15 to CRIMES_1995;

ALTER TABLE district rename column A16 to CRIMES_1996;