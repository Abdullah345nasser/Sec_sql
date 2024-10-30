create  database CompanyDB

create schema Sales

create table sales.employees (
employee_id int ,
first_name varchar (50),
last_name varchar (50),
salary dec)

alter table sales.employees 
add  hire_date date 
--•	Select all columns from the "employees" table.
select *
from Sales.employees

--•	Select all columns from the "employees" table.
select first_name ,last_name
from Sales.employees

--•	Select all columns from the "employees" table.

select first_name +' '+ last_name 'full name'
from Sales.employees

-- •Show the average salary of all employees.
select salary 
from sales.employees

--•	Show the average salary of all employees.
select salary 
from sales.employees
where salary > 50000

--•	Show the average salary of all employees.

select * 
from Sales.employees
where year(hire_date) = 2020

--•	Show the average salary of all employees.

select *
from sales.employees 
where last_name like 'S%'

--•Display the top 10 highest-paid employees.
select top (10) *
from sales.employees
order by salary desc 

--•	Display the top 10 highest-paid employees.
select * 
from sales.employees 
where salary between 40000 and 60000
-- •Show employees with names containing the substring 'man.'

select * 
from Sales.employees
where first_name like '%man%' or last_name like '%man%'


--•	Display employees with a NULL value in the "hire_date" column.
select *
from sales.employees 
where hire_date is null

--•Select employees with a salary in the set (40000, 45000, 50000).

select *
from sales.employees
where salary in  (40000,45000,50000)
--•	Retrieve employees hired between '2020-01-01' and '2021-01-01.'
select *
from sales.employees 
where hire_date between '2020-01-01' and '2021-01-01'

--•	List employees with salaries in descending order.

select salary 
from sales.employees
order by salary desc

-- •Show the first 5 employees ordered by "last_name" in ascending order.
select *
from sales.employees
order by last_name
offset 0 rows
fetch first 5 rows only


--•	Display employees with a salary greater than 55000 and hired in 2020.

select * 
from Sales.employees

where salary > 55000 and year(hire_date) = 2020

--•	Select employees whose first name is 'John' or 'Jane.'

select * 
from Sales.employees
where first_name = 'john' or first_name = 'jane'

--•	List employees with a salary less than or equal to 55000 and a hire date after '2022-01-01.'
select * 
from Sales.employees 
where salary > 55001 and hire_date > '2022-01-01'

--•	Retrieve employees with a salary greater than the average salary.

--•	Display the 3rd to 7th highest-paid employees.

select * 
from Sales.employees 
where hire_date >'2021-01-01'
order by hire_date

-- •	Retrieve employees with a salary greater than 50000 and last name not starting with 'A.'
select * 
from Sales.employees 
where salary > 50000 and last_name !='A%'

--•	Display employees with a salary that is not NULL.

select *
from sales.employees 
where salary is not null

--•Display employees with a salary that is not NULL.

select *
from Sales.employees 
where first_name = '%e%i%' or last_name ='%e%i%' and salary > 45000
















