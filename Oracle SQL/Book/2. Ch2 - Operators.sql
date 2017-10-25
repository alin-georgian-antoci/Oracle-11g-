-----------------------------------------

-------- ROW IDENTIFIERS --------

-----------------------------------------

-- ROWID
-- rowid is pseudo column that returns row identifier of the row 

select rowid, customer_id
from customers;
	
-- ROWNUM
-- returns the row number in a result set 

select rownum, customer_id, first_name, last_name
from customers;

-----------------------------------------

-------- PERFORMING ARITHMETIC ----------

-----------------------------------------

---------------------------
-- Operators: + , - , * , /
---------------------------

select 2*6
	from dual;

select to_date('25-JUL-2007')+2
	from dual;
	
select name, price +2
from products;
	
select 10*12/3-1
from dual;

select 10*(12/3-1)
from dual;
	

-----------------------------------------

-------- ALIAS --------

-----------------------------------------

select price * 2 as double_price  -- it can also be w/o AS  or between " "
from products;
	
-----------------------------------------

-------- CONCATENATION --------

-----------------------------------------

select first_name || ' ' || last_name as "Customer Name"
from customers;
	
-----------------------------------------

-------------- NULL VALUES --------------

-----------------------------------------

-- NULL value is not a blank string - it is a distinct value 
-- a NULL value means the value for the column is unknown

select * 
from customers
where dob is null;
	
-- NVL(par1, 'text')
-- NVL()  returns another value in place of a null.

select customer_id, first_name, last_name, nvl(phone, 'unknown phone nr') as phone_number
from customers;


-----------------------------------------

-------- COMPARING VALUES VALUES --------

-----------------------------------------

-- <> OR != , <, >, =, <=, >=, ANY, SOME, ALL 

-- ANY compares one value with any value in a list
-- SOME is identical to the any operator
-- ALL compares one value with all values in a list


-----------------------------------------

------------- SQL OPERATORS -------------

-----------------------------------------

-- LIKE - matches patters in strings
-- IN - matches lists of values
-- BETWEEN - matches a range of values 
-- IS NULL - matches null values 
-- IS NAN - matches the nan special value, which means "not a number"
-- IS INFINITE - matches infinite BINARY_FLOAT and _DOUBLE values 

-- ** Like **
-- Underscore (_) - matches once character in a specified position
-- Percent (%) - matches any number of characters beginning at the specified position 

select *
from customers
where first_name like '_o%';

-- if wou need to search for actual underscore or percent characters in a string, you can use
-- ESCAPE option to identify those characters 

select name
from promotions
where name like '%\%%' escape '\'; 

'


-----------------------------------------

----------- LOGICAL OPERATORS -----------

-----------------------------------------

-- x AND y - returns true when both x and y are true
-- x OR y - returns true when either x or y is true 
-- NOT x - returns true if x is false, and returns false if x is true 


-----------------------------------------

---------- OPERATOR PRECEDENCE ----------

-----------------------------------------

-- If you combine AND and OR in the same expression, the AND operator takes
-- procedence over the OR operator.
-- IMPORTANT!! The COMPARISON OPERATORS take precedence over AND 
-- You can override the default precedence by using parantheses to indicate
-- the order in which you want to execute the expressions

select *
from customers
where dob > '01-JAN-2017'
OR customer_id < 2
AND phone LIKE '%1211';

-- ==> Order of execution: dob > '01-JAN-2017' OR (customer_id < 2 AND phone like '%1211'); 



-----------------------------------------


-----------------------------------------

----------- CARTESIAN PRODUCTS ----------

-----------------------------------------

-- if a join condition is missing, you will end up joining all rows from one table with all the rows from the other table

select pt.product_types_is, p.product_id
from product_types pt, products p;