create table employees (
    employee_id int primary key auto_increment,
    fullName nvarchar(255) not null,
    job_title nvarchar(255),
    birth_year int not null,
    email_address nvarchar(255) not null
);
create table projects (
    project_id int primary key auto_increment,
    project_name nvarchar(255) not null ,
    start_date date not null ,
    end_date date,
    allocated_budget decimal(15,2)
);
insert into employees(fullName, job_title, birth_year, email_address)
values ('ShirinShafiei', 'IT Manager', 2006, 'shirin84shafiei@gmail.com');
insert into employees(fullName, job_title, birth_year, email_address)
values ('MaryamSadeghi', 'Software Developer', 2006, 'sadeghimaryam199@gmail.com');
insert into employees(fullName, job_title, birth_year, email_address)
values ('ZhinaDadashian', 'UI Designer', 2005, 'vizhvizh13@gmail.com');
insert into employees(fullName, job_title, birth_year, email_address)
values ('SabaFali', 'Project Manager', 2006, 'saba@gmail.com');
insert into employees(fullName, job_title, birth_year, email_address)
values ('SaraFarashi', 'Data Analyst', 2006, 'Sara@gmail.com');
insert into projects (project_id, project_name, start_date, end_date, allocated_budget) values
(101, 'Customer Relationship Management System', '2024-01-15', '2024-06-30', 5000000.00),
(102, 'Online Sales Platform', '2024-02-01', '2024-09-15', 7500000.50),
(103, 'Financial Data Analysis System', '2024-03-10', '2024-12-01', 6200000.75),
(104, 'Mobile App for Service Management', '2024-04-20', '2024-11-30', 4300000.00),
(105, 'Internal Network Infrastructure Improvement', '2024-05-05', NULL, 3000000.25)
alter table employees
add column bonus decimal(10,2) default 0.00;
alter table employees
drop column  birth_year;
select * from employees;
select * from projects where end_date is null;