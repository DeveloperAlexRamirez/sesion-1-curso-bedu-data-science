use classicmodels;

show tables;

describe employees;


select lastname from employees;

select lastName, firstName, jobTitle from employees;

select * from employees;

select lastName, firstName, jobTitle from employees
where jobTitle = 'Sales Rep';

select lastName, firstName, jobTitle from employees
where jobTitle = 'Sales Rep' AND officeCode = 1 ;

select lastName, firstName, jobTitle from employees
where jobTitle = 'Sales Rep' OR officeCode = 1 ;

select lastName, firstName, jobTitle from employees
where jobTitle = 'Sales Rep' AND officeCode = 1 ;

select lastName, firstName, officeCode from employees
where officeCode = 1 or 2 or 3; 

select lastName, firstName, jobTitle from employees
where jobTitle != 'Sales Rep';

select lastName, firstName, officeCode from employees
where officeCode > 5; 


select lastName, firstName, officeCode from employees
where officeCode <= 4; 

show tables;


select * from customers;


select customerName, country, state from customers
WHERE country = 'USA' AND state = 'CA';


select customerName, country, state, creditLimit from customers
WHERE country = 'USA' AND state = 'CA' AND creditLimit > 10000;

select * from customers
WHERE country = 'USA' or country ='FRANCE';

select customerName, country, creditLimit from customers
WHERE country in ('USA', 'FRANCE')
AND creditLimit > 10000;


select officeCode, city, phone, country from offices
WHERE country = 'USA' or country = 'FRANCE';


select officeCode, city, phone, country from offices
WHERE country != 'USA' and country != 'FRANCE';

-- Otra forma de hacerlo

select officeCode, city, phone, country from offices
WHERE country NOT IN ('USA', 'France');


-- 17
SELECT orderNumber, customerNumber, status, requiredDate 
from orders
WHERE orderNumber IN(10165, 10287, 10310);

-- 19
SELECT contactLastName, customerName
FROM customers ORDER BY contactLastName;

-- 20 
SELECT contactLastName, customerName
FROM customers
ORDER BY contactLastName DESC;

-- 21

SELECT contactLastName, customerName
FROM customers
ORDER BY contactLastName DESC, customerName;

-- 22 
SELECT contactLastNumber, customerName, creditLimit
FROM customers
WHERE creditLimit > 0
ORDER BY creditLimit DESC
LIMIT 5;

-- 23

SELECT contactLastNumber, customerName, creditLimit
FROM customers
WHERE creditLimit > 0
ORDER BY creditLimit
LIMIT 5;
