DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo( IN nome_cargo VARCHAR(50))
BEGIN 
SELECT AVG(E.SALARY) AS 'Média salarial' FROM hr.employees E
INNER JOIN hr.jobs J
ON J.JOB_ID = E.JOB_ID
WHERE J.JOB_TITLE = nome_cargo;
END $$
DELIMITER ;