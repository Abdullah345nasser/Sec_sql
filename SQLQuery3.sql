create database Sheet2

create schema schema2 


create table schema2.regions (
region_id int primary key ,
region_name varchar(25))


create table schema2.departments (
department_id int primary key,
department_name varchar(30),
manager_id int ,
location_id int )

create table schema2.job_history (
Employee_id int  ,
start_date date,
primary key(Employee_id ,start_date),
end_date date,
job_id varchar(10),
department_id int )


create table schema2.countries (
country_id char(2) primary key,
country_name varchar(40),
region_id int )

create table schema2.employees(
employee_id int primary key,
first_name varchar(20),
last_name varchar(25),
email varchar(25),
phone_nmber varchar(20),
hire_date date,
job_id varchar(10),
salary int ,
commission_PCT int,
manager_id int ,
department_id int,
)

create table Locations (
loc_id int primary key,
street_address varchar(25),
postal_code varchar(12),
city varchar (30),
state_province varchar(12),
country_id char(2) )

create table jobs (
job_id varchar(10) primary key,
job_title varchar (35),
min_salary int ,
max_salary int )

create table job_grades (
 grade_level varchar(2),
 lowest_sal int,
 highest_sal int)

