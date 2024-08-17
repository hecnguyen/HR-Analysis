--Age Count of Attrition:
--Counting the ages of people who responded 'yes' or 'no' to attrition

--Yes:
SELECT age, COUNT(age) AS count
FROM employee
WHERE attrition = 'Yes'
GROUP BY age

--No:
SELECT age, COUNT(age) AS count
FROM employee
WHERE attrition = 'No'
GROUP BY age

--Monthly Income Attrition Count:
--Grouping and counting the monthly income of people based on their response to attrition 'yes' or 'no'

--Yes:
WITH cte AS
(SELECT CEILING(monthlyincome/100.0) * 100 AS monthlyincome,attrition 
FROM employee),
cte2 AS
(SELECT attrition, CASE 
WHEN monthlyincome BETWEEN 0 AND 1500 THEN '1000'
WHEN monthlyincome BETWEEN 1501 AND 2500 THEN '2000'
WHEN monthlyincome BETWEEN 2501 AND 3500 THEN '3000'
WHEN monthlyincome BETWEEN 3501 AND 4500 THEN '4000'
WHEN monthlyincome BETWEEN 4501 AND 5500 THEN '5000'
WHEN monthlyincome BETWEEN 5501 AND 6500 THEN '6000'
WHEN monthlyincome BETWEEN 6501 AND 7500 THEN '7000'
WHEN monthlyincome BETWEEN 7501 AND 8500 THEN '8000'
WHEN monthlyincome BETWEEN 8501 AND 9500 THEN '9000'
WHEN monthlyincome BETWEEN 9501 AND 10500 THEN '10000'
WHEN monthlyincome BETWEEN 10501 AND 11500 THEN '11000'
WHEN monthlyincome BETWEEN 11501 AND 12500 THEN '12000'
WHEN monthlyincome BETWEEN 12501 AND 13500 THEN '13000'
WHEN monthlyincome BETWEEN 13501 AND 14500 THEN '14000'
WHEN monthlyincome BETWEEN 14501 AND 15500 THEN '15000'
WHEN monthlyincome BETWEEN 15501 AND 16500 THEN '16000'
WHEN monthlyincome BETWEEN 16501 AND 17500 THEN '17000'
WHEN monthlyincome BETWEEN 17501 AND 18500 THEN '18000'
WHEN monthlyincome BETWEEN 18501 AND 19500 THEN '19000'
WHEN monthlyincome BETWEEN 19501 AND 30000 THEN '20000'
END AS monthly_income
FROM cte)

SELECT monthly_income, COUNT(*)
FROM cte2
WHERE attrition = 'Yes'
GROUP BY monthly_income
ORDER BY monthly_income

--No:
WITH cte AS
(SELECT CEILING(monthlyincome/100.0) * 100 AS monthlyincome,attrition 
FROM employee),
cte2 AS
(SELECT attrition, CASE 
WHEN monthlyincome BETWEEN 0 AND 1500 THEN '1000'
WHEN monthlyincome BETWEEN 1501 AND 2500 THEN '2000'
WHEN monthlyincome BETWEEN 2501 AND 3500 THEN '3000'
WHEN monthlyincome BETWEEN 3501 AND 4500 THEN '4000'
WHEN monthlyincome BETWEEN 4501 AND 5500 THEN '5000'
WHEN monthlyincome BETWEEN 5501 AND 6500 THEN '6000'
WHEN monthlyincome BETWEEN 6501 AND 7500 THEN '7000'
WHEN monthlyincome BETWEEN 7501 AND 8500 THEN '8000'
WHEN monthlyincome BETWEEN 8501 AND 9500 THEN '9000'
WHEN monthlyincome BETWEEN 9501 AND 10500 THEN '10000'
WHEN monthlyincome BETWEEN 10501 AND 11500 THEN '11000'
WHEN monthlyincome BETWEEN 11501 AND 12500 THEN '12000'
WHEN monthlyincome BETWEEN 12501 AND 13500 THEN '13000'
WHEN monthlyincome BETWEEN 13501 AND 14500 THEN '14000'
WHEN monthlyincome BETWEEN 14501 AND 15500 THEN '15000'
WHEN monthlyincome BETWEEN 15501 AND 16500 THEN '16000'
WHEN monthlyincome BETWEEN 16501 AND 17500 THEN '17000'
WHEN monthlyincome BETWEEN 17501 AND 18500 THEN '18000'
WHEN monthlyincome BETWEEN 18501 AND 19500 THEN '19000'
WHEN monthlyincome BETWEEN 19501 AND 30000 THEN '20000'
END AS monthly_income
FROM cte)

SELECT monthly_income, COUNT(*)
FROM cte2
WHERE attrition = 'No'
GROUP BY monthly_income
ORDER BY monthly_income

--Department Attrition:
--Counting the number of people in each department who responded 'yes' or 'no' to attrition

--Yes: 
SELECT department, COUNT(*) AS count
FROM employee
WHERE attrition = 'Yes'
GROUP BY department

--No:
SELECT department, COUNT(*) AS count
FROM employee
WHERE attrition = 'No'
GROUP BY department

--Environment Satisfaction:
--Counting the ratings of environmental satisfaction for people who responded 'yes' or 'no' to attrition

--Yes: 
SELECT environmentsatisfaction, COUNT(*) AS count 
FROM employee
WHERE attrition = 'Yes'
GROUP BY environmentsatisfaction
ORDER BY 1

--No: 
SELECT environmentsatisfaction, COUNT(*) AS count 
FROM employee
WHERE attrition = 'Yes'
GROUP BY environmentsatisfaction
ORDER BY 1

--Job Satisfaction:
--Counting the ratings of job satisfaction for people who responded 'yes' or 'no' to attrition

--Yes: 
SELECT jobsatisfaction, COUNT(*) AS count 
FROM employee
WHERE attrition = 'Yes'
GROUP BY jobsatisfaction
ORDER BY 1

--No: 
SELECT jobsatisfaction, COUNT(*) AS count 
FROM employee
WHERE attrition = 'Yes'
GROUP BY jobsatisfaction
ORDER BY 1

--Stock Option Level:
--Counting the ratings of stock option level for people who responded 'yes' or 'no' to attrition

--Yes: 
SELECT stockoptionlevel, COUNT(*) AS count 
FROM employee
WHERE attrition = 'Yes'
GROUP BY stockoptionlevel
ORDER BY 1

--No:
SELECT stockoptionlevel, COUNT(*) AS count 
FROM employee
WHERE attrition = 'Yes'
GROUP BY stockoptionlevel
ORDER BY 1

--Work Life Balance Count:
--Counting the ratings of work life balance for people who responded 'yes' or 'no' to attrition

--Yes: 
SELECT worklifebalance,COUNT(*) AS count
FROM employee
WHERE attrition = 'Yes'
GROUP BY worklifebalance
ORDER BY 1

--No:
SELECT worklifebalance,COUNT(*) AS count
FROM employee
WHERE attrition = 'No'
GROUP BY worklifebalance
ORDER BY 1

--Work Experience:
--Counting the number of companies where people worked who responded 'yes' or 'no' to attrition

--Yes:
SELECT numcompaniesworked,COUNT(*) AS count
FROM employee
WHERE attrition = 'Yes'
GROUP BY 1
ORDER BY 1

--No: 
SELECT numcompaniesworked,COUNT(*) AS count
FROM employee
WHERE attrition = 'Yes'
GROUP BY 1
ORDER BY 1

--Work Duration:
--Counting the work duration in the current role for people who responded 'yes' or 'no' to attrition

--Yes: 
SELECT yearsincurrentrole,COUNT(*) AS count
FROM employee
WHERE attrition = 'Yes'
GROUP BY 1
ORDER BY 1

--No:
SELECT yearsincurrentrole,COUNT(*) AS count
FROM employee
WHERE attrition = 'No'
GROUP BY 1
ORDER BY 1
