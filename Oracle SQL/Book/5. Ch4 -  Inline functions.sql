-------------------------------------

------------ FUNCTIONS --------------

-------------------------------------

-- * ASCII() AND CHR()
-- - get the ascii value of the character x 

select ascii('a')
from dual;

select char(97)
from dual;

-- * CONCAT(X,Y)
-- append y to x and return the new string 

select concat(first_name, last_name)
from customers;

-- * INITCAP(X)
-- convert the initial letter of each word in x to uppercase 

select product_id, initcap(description)
from products
where product_id <4 ;

-- * INSTR(X, find_string [, start] [, occurrence])
-- retursn the position at which find_string occurs.

select name, instr(name, 'Science')
from products 
where product_id=1;

-- * LENGTH(X)
-- return the number of characters in x

select customer_id, length(name)
from products;

-- * LOWER() and UPPER()
-- convert the letters in x to lowercase/uppercase

-- * LPAD (X, WIDTH[, pad_string])