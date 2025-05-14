create table projects (
    project_id int primary key auto_increment,
    project_name nvarchar(255) not null ,
    start_date date not null ,
    end_date date,
    allocated_budget decimal(15,2)
)