SELECT 
    C.ContactName AS 'Nome de contato',
    S.ShipperName AS 'Empresa que fez o envio',
     O.orderDate AS 'Data do pedido'
FROM
    w3schools.orders O
        INNER JOIN
    w3schools.shippers S
    ON S.ShipperId = O.ShipperId
		INNER JOIN 
	w3schools.customers C
    ON O.CustomerID = C.CustomerID 
WHERE S.ShipperName = 'Speedy Express' OR S.ShipperName = 'United Package'
ORDER BY `Nome de contato` ASC ,`Empresa que fez o envio` ASC;
