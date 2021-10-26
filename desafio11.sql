SELECT 
C.ContactName AS 'Nome',
C.Country AS 'País',
( SELECT COUNT(C2.Country) - 1 
FROM w3schools.customers C2
WHERE C2.Country = C.Country) AS 'Número de compatriotas'
FROM w3schools.customers C
HAVING `Número de compatriotas` <> 0
ORDER BY `Nome` ASC;