DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario( email VARCHAR(60))
RETURNS INT READS SQL DATA
BEGIN 
DECLARE quantidade_de_empregos INT;
SELECT COUNT(E.employee_id) AS 'quantidade_de_empregos' FROM hr.employees E
INNER JOIN hr.job_history J
ON J.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE E.EMAIL = email
INTO quantidade_de_empregos;
RETURN quantidade_de_empregos;
END $$
DELIMITER ;
