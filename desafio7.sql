SELECT 
UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS 'Nome completo',
JH.START_DATE AS 'Data de início',
E.SALARY AS 'Salário'
FROM hr.job_history JH
INNER JOIN hr.employees E
ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
WHERE MONTH(START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo` ASC, `Data de início` ASC;
