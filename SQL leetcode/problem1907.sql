WITH CTE_lowSalary as 
        (SELECT
            account_id as new_id,
            income as low_income
        FROM 
            accounts
        WHERE
            income < 20000),

 CTE_avgSalary as 
        (SELECT
            account_id,
            income as avg_income
        FROM 
            accounts
        WHERE
            income BETWEEN  20000 AND 50000),
            
CTE_highSalary as 
        (SELECT
            account_id,
            income as high_income
        FROM 
            accounts
        WHERE
            income > 50000)

SELECT 'Low Salary' as category, count(low_income) as accounts_count FROM CTE_lowSalary
UNION ALL
SELECT 'Average Salary' as category, count(avg_income) as accounts_count FROM CTE_avgSalary
UNION ALL
SELECT 'High Salary' as category, count(high_income) as accounts_count FROM CTE_highSalary