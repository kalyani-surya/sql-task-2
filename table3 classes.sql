create table classes (
id int primary key,
name varchar not null,
mob bigint default 0,
isActive boolean default true
)

select * from classes
insert into classes (id,name,mob,isActive)values(07,'kalyani',808767544,true)
insert into classes (id,name)values(02,'shruti');

insert into classes (id,name)values(05,'gauri')
insert into classes(id,name,mob,isActive)values(01,'shubhum',765988767544,false);

insert into classes(id,name,mob,isActive)values(09,'pranay',7988767544,false);

select * from classes

create table course(
id int primary key,
subject varchar not null,
total_sub int default 02,
classes_id int not null,
constraint course_classes_id FOREIGN key (classes_id) REFERENCES classes (id)
)
select * from course
insert into course values(024,'sub1',45,01);
insert into course values(023,'sub2',45,01);
insert into course values(025,'sub3',47,01);
insert into course values(026,'sub4',47,01);
insert into course values(027,'sub5',48,01);
