CREATE TABLE Users (
users_id int primary key,
name varchar not null,
address varchar not null,
grade varchar default 'D',
isActive boolean default true
)

select * from users

INSERT INTO Users (users_id, name, address, grade, isActive) VALUES (2,'user2','add2','D',false);
INSERT INTO Users (users_id, name, address, grade, isActive) VALUES (3,'user3','add3','D',false);
INSERT INTO Users (users_id, name, address, grade, isActive) VALUES (4,'user4','add4','D',false);
INSERT INTO Users (users_id, name, address, grade, isActive) VALUES (5,'user5','add5','D',false);
INSERT INTO Users (users_id, name, address, grade, isActive) VALUES (6,'user6','add6','D',false);




create table ordersFKTable(
id serial primary key,
name varchar not null,
mobile bigint default 0,
gender varchar not null,
isActive boolean default true,
users_id int,
constraint fk_orders_users
foreign key(users_id) references Users
)

create table OrdersTable(oid serial primary key,orderName varchar not null,users_id int REFERENCES users(users_id));

INSERT INTO OrdersTable values (1001,'nokia',2);
INSERT INTO OrdersTable values (1002,'nokia',3);
INSERT INTO OrdersTable values (1003,'nokia',4);
INSERT INTO OrdersTable values (1004,'nokia',5);
INSERT INTO OrdersTable values (1005,'nokia',6);

select * from OrdersTable;


