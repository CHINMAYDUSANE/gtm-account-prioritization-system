-- Q1 - How many companies are in the dataset?
SELECT COUNT(company_name) AS total_companies
FROM target_accounts

-- Q2 - How many companies are Tier 1, Tier 2 and Tier 3?
SELECT account_priority, COUNT(company_name)
FROM target_accounts
GROUP BY account_priority

-- Q3 - How many companies have each GTM Hiring Signal?
SELECT gtm_hiring_signal, COUNT(company_name)
FROM target_accounts
GROUP BY gtm_hiring_signal

-- Q4 - Show all Tier 1 accounts with their company name, domain and Account Priority Reasoning.
SELECT company_name, domain, account_priority_reasoning
FROM target_accounts
WHERE account_priority = 'Tier 1'

-- Q5 - Find companies with 10 or more GTM job openings.
SELECT company_name FROM target_accounts
WHERE gtm_jobs_numeric >= 10

-- Q6 - Find companies where both GTM Maturity is High and GTM Hiring Signal is High.
SELECT company_name FROM target_accounts
WHERE gtm_maturity_level = 'High' AND gtm_hiring_signal = 'High'

-- Q7 - What is the average number of GTM jobs for Tier 1, Tier 2 and Tier 3 accounts?
SELECT account_priority, ROUND(AVG(gtm_jobs_numeric),2) AS avg_gtm_jobs
FROM target_accounts
GROUP BY account_priority

-- Q8 - Show the top 10 companies by number of GTM job openings.
SELECT company_name FROM target_accounts
ORDER BY gtm_jobs_numeric DESC
LIMIT 10

-- Q9 - Find companies with High GTM Maturity but Low/No observed Hiring.
SELECT company_name FROM target_accounts
WHERE gtm_maturity_level = 'High'
AND gtm_hiring_signal IN ('No observed Hiring','Low')

-- Q10 - Find Tier 1 companies that have High GTM Maturity and High GTM Hiring Signal, and order them by GTM job openings.
SELECT company_name FROM target_accounts
WHERE account_priority = 'Tier 1' AND gtm_maturity_level = 'High'
AND gtm_hiring_signal = 'High'
ORDER BY gtm_jobs_numeric DESC
