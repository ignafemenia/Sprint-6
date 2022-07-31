1_a y 1_b 

CREATE VIEW customer_with_age
AS
SELECT
customer_id,
customer_name, 
customer_surname,
customer_DNI,
branch_id,
cast(strftime('%Y.%m%d','now') - strftime('%Y.%m%d', dob)as int) as customer_age

FROM cliente;

select * from customer_with_age;




SELECT * FROM  customer_with_age where customer_age > 40 order by customer_DNI ASC;

SELECT * from customer_with_age WHERE customer_name IN ('Tyler', 'Anne') ORDER BY customer_age ASC;


Parte 2

INSERT INTO cliente
  (customer_name,customer_surname,customer_DNI, branch_id, dob)
  VALUES ('Lois','Stout','47730534', '80', '1984-07-07');  
  
INSERT INTO cliente
  (customer_name,customer_surname,customer_DNI, branch_id, dob)
  VALUES ('Hall','Mcconnell','52055464', '45', '"1968-04-30');
  
INSERT INTO cliente
  (customer_name,customer_surname,customer_DNI, branch_id, dob)
  VALUES ('Hilel','Mclean','43625213', '77', '1993-03-28');
  
INSERT INTO cliente
  (customer_name,customer_surname,customer_DNI, branch_id, dob)
  VALUES ('Jin','Cooley','21207908', '96', '1959-08-24');
  
INSERT INTO cliente
  (customer_name,customer_surname,customer_DNI, branch_id, dob)
  VALUES ('Gabriel','Harmon','57063950', '27', '"1976-04-01');
  


3-

UPDATE cliente SET branch_id='10' WHERE customer_name = 'Lois Stout';
UPDATE cliente SET branch_id='10' WHERE customer_name = 'Hall Mcconnell';
UPDATE cliente SET branch_id='10' WHERE customer_name = 'Hitel Mclean';
UPDATE cliente SET branch_id='10' WHERE customer_name = 'Jin Cooley';
UPDATE cliente SET branch_id='10' WHERE customer_name = 'Gabriel Harmon';





4- Parte 4


INSERT INTO cliente (customer_name,customer_surname,customer_DNI, branch_id, dob) VALUES ('Noel','David','57024950', '82', '1992-05-07');


SELECT * from cliente where customer_name = 'Noel'

DELETE FROM cliente WHERE customer_name='Noel' OR customer_surname = 'David';




Parte 5

SELECT MAX(loan_total) FROM prestamo;



