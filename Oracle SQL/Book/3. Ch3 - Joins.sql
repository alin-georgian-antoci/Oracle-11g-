-----------------------------------------

---------------- JOINS ------------------

-----------------------------------------

-- EQUIJOINS - use the equelity operator (=)
-- Non-equijoins - use an operator other that the equelity operator, such as <,>, BETWEEN and so on.
-- INNER JOIN - return a row only when the columns in the join contain values that satisfy the join condition.
-- OUTER JOIN - return a row even when one of the columns in the join condition contains a null values 
-- SELF JOIN - return rows joined on the same table



-----------------------------------------

------------- OUTER JOIN -------------

-----------------------------------------

select p.name, pt.name
from products p, product_types pt
where p.product_types = pt.product_type_id (+)
order by p.name;

-- LEFT OUTER JOIN 
-- where t1.column1 = t2.column2 (+);

-- RIGHT OUTER JOIN
-- where t1.column1 (+) = t2.column2;


-----------------------------------------

------------- SELF JOIN -------------

-----------------------------------------

SELECT w.first_name || ' ' || w.last_name || ' works for '||
 m.first_name || ' ' || m.last_name
FROM employees w, employees m
WHERE w.manager_id = m.employee_id
ORDER BY w.first_name;



-----------------------------------------

------------- SIMPLIFYING -------------

-----------------------------------------

SELECT p.name, pt.name
FROM products p INNER JOIN product_types pt
USING (product_type_id);


SELECT p.name, pt.name, product_type_id
FROM products p INNER JOIN product_types pt
USING (product_type_id);

-----------------------------------------

-------- JOINING MULTIPLE TABLES  -------

-----------------------------------------

SELECT c.first_name, c.last_name, p.name AS PRODUCT, pt.name AS TYPE
FROM customers c INNER JOIN purchases pr
USING (customer_id)
INNER JOIN products p
USING (product_id)
INNER JOIN product_types pt
USING (product_type_id)
ORDER BY p.name;


-----------------------------------------

-------------- CROSS JOIN   -------------

-----------------------------------------

SELECT *
FROM product_types CROSS JOIN products;