Bank Loan Report Query Document
This project is a SQL-based bank loan analysis. In this Project we make analysis and evaluate the key performance indicators (KPIs) related to loan applications, funding, repayments, and risk assessment. The queries extract insights from a financial_loan dataset, providing metrics at different granularities (monthly, by loan status, state, term, etc.).

Key Components
1. Summary KPIs
  Loan Volume Metrics
  Total, Monthly (MTD), and Previous Month (PMTD) loan applications.
  Funded amounts (total, MTD, PMTD).
  Total received payments (MTD/PMTD).
  Risk & Financial Metrics

  Average interest rates (overall, MTD, PMTD).
  Debt-to-Income (DTI) ratios.
  Good vs. Bad Loans:
  Good Loans ("Fully Paid" or "Current" status): Count, funded amount, received payments.
  Bad Loans ("Charged Off" status): Percentage, count, losses.
2. Loan Status Breakdown
  Aggregates by loan_status (e.g., "Current", "Fully Paid", "Charged Off"):
  Number of loans.
  Total funded/received amounts.
  Avg. interest rate and DTI.
3. Overview Dashboards
  Monthly Trends: Loan applications, funded/received amounts by month.
  Geographic Analysis: Loans by state (address_state).
  Loan Terms: Performance by term (e.g., 36/60 months).
4. Borrower Profiles:
  Employment length (emp_length).
  Loan purpose (purpose).
  Home ownership status (home_ownership).
