Parte 1 
SELECT * FROM cuenta where balance <0;

Parte 2
SELECT customer_name, customer_surname, dob FROM cliente WHERE customer_surname like "%z%"

Parte 3
SELECT t0.customer_name, t0.customer_surname, t0.customer_age, t0.branch_id, t1.branch_name 
FROM customer_with_age t0 INNER JOIN sucursal t1 ON t0.branch_id = t1.branch_id 
WHERE t0.customer_name = "Brendan" ORDER BY t1.branch_name ASC;

Parte 4
SELECT * from prestamo WHERE loan_total > 8000000
UNION SELECT * from prestamo where loan_type = "PRENDARIO"

Parte 5
SELECT * FROM prestamo WHERE  loan_total > (SELECT avg(loan_total) FROM prestamo)

Parte 6
SELECT COUNT(customer_DNI) FROM customer_with_age WHERE customer_age < 50;


Parte 7
SELECT * FROM cuenta WHERE balance > 8000 LIMIT 5;
Parte 8
SELECT * FROM prestamo p 
WHERE strftime('%m', P.loan_date)  IN ('04', '06', '08')
ORDER BY loan_total

Parte 9
SELECT 
 loan_type AS [Type]
 ,SUM(loan_total) AS [ loan_total_accu]
FROM prestamo
GROUP BY 1
