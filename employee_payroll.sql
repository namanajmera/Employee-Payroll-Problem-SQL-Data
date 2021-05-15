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

#UC6
alter table employee_payroll add gender char(1) after name;

update employee_payroll set gender='M' where name='Bill' or name='Charlie';

#UC7
update employee_payroll set gender='F' where name='Mark';

select sum(salary) from employee_payroll where gender='F' group by gender;

select sum(salary) from employee_payroll where gender='M' group by gender;

select avg(salary),gender from employee_payroll group by gender;

select min(salary) from employee_payroll;

select max(salary) from employee_payroll;

select count(*) from employee_payroll;

#UC8
alter table employee_payroll add phone int after gender;
alter table employee_payroll add address varchar(250) DEFAULT 'TBD' after phone;
alter table employee_payroll add department varchar(250) NOT NULL after address;
