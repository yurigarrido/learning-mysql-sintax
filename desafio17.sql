USE w3schools;
DELIMITER $$
CREATE TRIGGER update_hour_now
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN 
 SET NEW.OrderDate = CURRENT_DATE();
 END $$
 
DELIMITER ;

-- Error Code: 1362. Updating of NEW row is not allowed in after trigger
