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