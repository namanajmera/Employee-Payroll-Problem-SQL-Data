#UC1
show databases;

create database payroll_service_db;

use payroll_service_db;

#UC2
create table employee_payroll
(
	id int unsigned NOT NULL AUTO_INCREMENT,
    name varchar(150) NOT NULL,
    salary double NOT NULL,
    start date NOT NULL,
    PRIMARY KEY (id)
);
show tables;
desc employee_payroll;

#UC3
insert into employee_payroll (name,salary,start) values
('Bill',100000.00,'2018-01-03'),
('Mark',200000.00,'2019-11-13'),
('Charlie',300000.00,'2020-05-21');

#UC4
select * from employee_payroll;

#UC5
select salary from employee_payroll where name='Bill';

select * from employee_payroll 
where start between cast('2018-01-01' as date) and date(now());