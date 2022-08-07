SELECT 
	TT.tipo_name AS [Type]
	,C.branch_id AS [Branch]
	,COUNT(T.numero) AS [Cards]
FROM tarjetas T
JOIN tipo_tarjeta TT ON TT.tipo_id = T.tipo_tarjeta_id
JOIN cliente C ON C.customer_id = T.customer_id
GROUP BY 1, 2