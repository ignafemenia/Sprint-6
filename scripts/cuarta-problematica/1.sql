SELECT branch_name, count(branch_id) AS Cantidad_Clientes 
FROM sucursal GROUP BY branch_name ORDER BY count(branch_id) DESC;