-------- ROW IDENTIFIERS --------

-- ROWID
-- rowid is pseudo column that returns row identifier of the row 

select rowid, customer_id
from customers;
	
-- ROWNUM
-- returns the row number in a result set 

select rownum, customer_id, first_name, last_name
from customers;

---------------------------------

-------- PERFORMING ARITHMETIC --------
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
	

---------------------------------

-------- ALIAS --------

select price * 2 as double_price  -- it can also be w/o AS  or between " "
from products;
	
---------------------------------

-------- CONCATENATION --------

select first_name || ' ' || last_name as "Customer Name"
from customers;
	
---------------------------------

-------- NULL VALUES --------

-- NULL value is not a blank string - it is a distinct value 
-- a NULL value means the value for the column is unknown

select * 
from customers
where dob is null;
	
-- NVL(par1, 'text')
-- NVL()  returns another value in place of a null.

select customer_id, first_name, last_name, nvl(phone, 'unknown phone nr') as phone_number
from customers;







