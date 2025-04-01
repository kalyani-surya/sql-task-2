create table department (
ID int primary key,
NAME varchar not null,
address varchar not null,
isActive boolean default true
)

select * from department

insert into department values(01,'HR','pune',false);
insert into department values(02,'acct','mumbai',true);
insert into department values(03,'tester','pune',true);
insert into department values(04,'dev','germany',true);
insert into department values(05,'mang','london',true);

create table employee(
id int primary key,
name varchar not null,
position varchar not null,
department_id int not null,
CONSTRAINT employee_department_ID FOREIGN key(department_ID) REFERENCES department(ID)                            
);

select * from employee

insert into employee values(01,'kalyani','hr',01);
insert into employee values(02,'mona','tester',02);
insert into employee values(03,'payal','acct',03);
insert into employee values(04,'monali','dev',04);
insert into employee values(05,'hema','hr',05);