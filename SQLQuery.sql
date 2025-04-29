SELECT COUNT(id) AS Total_Applications FROM Financial_loan;


SELECT COUNT(id) Total_loan_application FROM financial_loan
WHERE MONTH(issue_date) = 12 

SELECT COUNT(id) Total_loan_application FROM financial_loan
WHERE MONTH(issue_date) = 11;

SELECT SUM(loan_amount) Total_funded_amount FROM financial_loan
where MONTH(issue_date) = 12, and YEAR(issue_date) = 2021

SELECT SUM(loan_amount) Total_funded_amount FROM financial_loan
where MONTH(issue_date) = 12, and YEAR(issue_date) = 2021

SELECT SUM(total_payment) AS Total_Amount_Received FROM financial_loan

SELECT SUM(total_payment) AS MTDTotal_Amount_Received FROM financial_loan
WHERE MONTH(issue_date) = 12 and YEAR(issue_date) = 2021


SELECT SUM(total_payment) AS PMTD_Total_Amount_Received FROM financial_loan
WHERE MONTH(issue_date) = 11 and YEAR(issue_date) = 2021

SELECT ROUND(AVG(int_rate), 4) *100  AS Avg_Interest_Rate FROM financial_loan 

SELECT ROUND(AVG(int_rate), 4) *100  AS MTD_Avg_Interest_Rate FROM financial_loan
WHERE MONTH(issue_date) = 12 and YEAR(issue_date) = 2021

SELECT ROUND(AVG(int_rate), 4) *100  AS PMTD_Avg_Interest_Rate FROM financial_loan
WHERE MONTH(issue_date) = 11 and YEAR(issue_date) = 2021

SELECT ROUND(AVG(dti), 4) *100  AS Average_Debt_to_Income_Ratio  FROM financial_loan

SELECT ROUND(AVG(dti), 4) *100  AS Average_Debt_to_Income_Ratio  FROM financial_loan
WHERE MONTH(issue_date) = 12 and YEAR(issue_date) = 2021

SELECT ROUND(AVG(dti), 4) *100  AS PMTD_Average_Debt_to_Income_Ratio  FROM financial_loan
WHERE MONTH(issue_date) = 11 and YEAR(issue_date) = 2021

SELECT 
COUNT(CASE WHEN loan_status = 'Fully Paid' or loan_status = 'Current' THEN id END)*100
		/
COUNT(id) AS Good_loan_percentage
FROM financial_loan

SELECT COUNT(CASE WHEN loan_status = 'Fully Paid' or loan_status = 'Current' THEN id END) AS Good_loan_Application FROM financial_loan

SELECT SUM(loan_amount) AS Good_Loan_Funded_Amount FROM financial_loan
WHERE loan_status = 'Fully Paid' or loan_status = 'Current';

SELECT SUM(total_payment) AS Good_Loan_Total_Received_Amount  FROM financial_loan
WHERE loan_status = 'Fully Paid' or loan_status = 'Current';

SELECT
    (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100.0) / 
	COUNT(id) AS Bad_Loan_Percentage
FROM financial_loan

SELECT COUNT(id) AS Bad_Loan_Applications FROM financial_loan
WHERE loan_status = 'Charged Off'

SELECT SUM(loan_amount) AS Bad_Loan_Funded_amount FROM financial_loan
WHERE loan_status = 'Charged Off'

Bad Loan Amount Received
SELECT SUM(total_payment) AS Bad_Loan_amount_received FROM financial_loan
WHERE loan_status = 'Charged Off'

SELECT
        loan_status,
        COUNT(id) AS LoanCount,
        SUM(total_payment) AS Total_Amount_Received,
        SUM(loan_amount) AS Total_Funded_Amount,
        AVG(int_rate * 100) AS Interest_Rate,
        AVG(dti * 100) AS DTI
    FROM
        financial_loan
    GROUP BY
        loan_status

		SELECT 
	loan_status, 
	SUM(total_payment) AS MTD_Total_Amount_Received, 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM financial_loan
WHERE MONTH(issue_date) = 12 
GROUP BY loan_status

SELECT 
	MONTH(issue_date) AS Month_Munber, 
	DATENAME(MONTH, issue_date) AS Month_name, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY MONTH(issue_date), DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date)

SELECT 
	address_state AS State, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY address_state
ORDER BY address_state

SELECT 
	term AS Term, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY term
ORDER BY term

SELECT 
	emp_length AS Employee_Length, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY emp_length
ORDER BY emp_length

SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY purpose
ORDER BY purpose

SELECT 
	home_ownership AS Home_Ownership, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY home_ownership
ORDER BY home_ownership


SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
WHERE grade = 'A'
GROUP BY purpose
ORDER BY purpose

