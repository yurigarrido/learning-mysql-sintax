SELECT 
	UCASE(CONCAT(E.FirstName, ' ', E.LastName)) AS 'Nome completo',
    COUNT(O.EmployeeID) AS 'Total de pedidos' FROM w3schools.employees E
INNER JOIN w3schools.orders O
ON E.EmployeeID = O.EmployeeID
GROUP BY O.EmployeeID
ORDER BY `Total de pedidos` ASC;