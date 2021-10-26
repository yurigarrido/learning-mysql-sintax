SELECT 
CONCAT(E1.first_name, ' ', E1.last_name) AS 'Nome completo funcionário 1',
E1.SALARY AS 'Salário funcionário 1',
E1.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(E2.first_name, ' ', E2.last_name) AS 'Nome completo funcionário 2',
E2.SALARY AS 'Salário funcionário 2',
E2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees E1
INNER JOIN hr.employees E2
ON E1.JOB_ID = E2.JOB_ID
HAVING `Nome completo funcionário 1` <> `Nome completo funcionário 2`
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
