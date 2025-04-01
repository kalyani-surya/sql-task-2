create table authors (
author_id int primary key,
name varchar not null,
country varchar not null,
birth_year bigint default 2000,
genre varchar not null
)


select * from authors
insert into authors (author_id,name,country,birth_year,genre) values

(1'monty','uk',1997,fantasty),
(7,'maxwell','germany',1995,'thriller');

insert into authors (author_id,name,country,genre) values
(4,'cole','france','sci-fi'),
(5,'polacco','china','drama')




create table books (
book_id serial primary key,
title varchar not null,
published_year bigint default 2023,
pages bigint not null,
author_id int,
CONSTRAINT fk_books_authors FOREIGN key (author_id) REFERENCES authors (author_id)
)



select * from books


insert into books (book_id,title,published_year,pages,author_id) values
(206,'palaceofbooks',2019,845,5)

insert into books (book_id,title,pages,author_id) values
(207,'pinkandsay',500,5)

insert into books (book_id,title,pages,author_id) values
(208,'pink',500,5)


insert into books (book_id,title,pages,author_id) values
(209,'abc',500,5)

insert into books (book_id,title,pages,author_id) values
(210,'abc1',500,5)
