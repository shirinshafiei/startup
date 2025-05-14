create table employees (
    employee_id int primary key auto_increment,
    fullName nvarchar(255) not null,
    job_title nvarchar(255),
    birth_year int not null,
    email_address nvarchar(255) not null
);
alter table employees
add column bonus decimal(10,2) default 0.00;
alter table employees
drop column  birth_year;