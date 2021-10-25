SELECT 
    C.ContactName AS 'Nome de contato',
    S.ShipperName AS 'Empresa que fez o envio',
    O.orderDate AS 'Data do pedido'
FROM
    w3schools.customers C
        INNER JOIN
    w3schools.shippers S
		INNER JOIN 
	w3schools.orders O
    ON O.CustomerID = C.CustomerID
ORDER BY `Nome de contato` ASC ,`Empresa que fez o envio` ASC, `Data do pedido` ASC;