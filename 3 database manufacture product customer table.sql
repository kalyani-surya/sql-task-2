create table Manufacture(
Pro_id int primary key,
Pro_name varchar not null,
price bigint not null,
pro_type varchar)


select * from manufacture;

insert into manufacture(Pro_id ,Pro_name,price,pro_type ) values(112,'smart watch',2000,'electronics');
insert into manufacture(Pro_id ,Pro_name,price,pro_type ) values(113,'laptop',2000,'electronics');
insert into manufacture(Pro_id ,Pro_name,price,pro_type ) values(114,'smart watch',2000,'electronics');
insert into manufacture(Pro_id ,Pro_name,price,pro_type ) values(115,'oven',2000,'electronics');


create table distributer(id int primary key,name varchar not null,d_price bigint not null,Quantity bigint,dis_ID int not null,
CONSTRAINT fk_distributer_manufacture foreign key (dis_id) REFERENCES manufacture (Pro_id)
)

select * from distributer

insert into distributer(id ,name,d_price,Quantity,dis_id ) values (11, 'Sharma Distributors', 50000, 20, 113),
(12,'Agarwal Suppliers', 17000, 15, 114),
(13,'Gupta Enterprises', 35000, 18, 115),
(14,'Khandelwal Distributors', 28000, 10, 114),
(15,'Jain Wholesalers', 23000, 25, 114),
(16,'Mishra Agencies', 6000, 30, 115),
(17,'Patel Traders', 13000, 22, 113),
(18,'Chopra Enterprises', 45000, 16, 113),
(19,'Bansal Distributors', 6000, 12, 112),
(20,'Mehta & Sons', 3000, 14, 112)


create table customer(C_id int primary key,name varchar not null,d_price bigint not null,pro_type varchar,D_ID int not null,
CONSTRAINT fk_Customer_distributer foreign key (D_id) REFERENCES distributer (id)
)

select * from customer

insert into customer(C_id ,name,d_price,pro_type,D_id ) values(52,'Aarav', 19000, 'Furniture', 12),
(53,'Ishita', 38000, 'Electronics', 13),
(54,'Rohan', 30000, 'Garments', 14),
(55,'Sneha', 4500, 'Footwear', 15),
(56,'Kabir', 12000, 'Furniture', 16),
(57,'Meera', 6000, 'Electronics', 17),
(58,'Vikram', 8000, 'Fitness', 18),
(59,'Pooja', 3500, 'Accessories', 19),
(60,'Rahul', 9000, 'Electronics', 20)

