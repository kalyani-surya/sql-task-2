CREATE TABLE Authors (
    author_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    birthdate DATE
);

select * from Authors

INSERT INTO Authors (name, birthdate) VALUES
('J.K. Rowling', '1965-07-31'),
('George Orwell', '1903-06-25'),
('Agatha Christie', '1890-09-15'),
('Jane Austen', '1775-12-16'),
('Leo Tolstoy', '1828-09-09'),
('Mark Twain', '1835-11-30'),
('Ernest Hemingway', '1899-07-21'),
('Charles Dickens', '1812-02-07'),
('Victor Hugo', '1802-02-26'),
('Franz Kafka', '1883-07-03');

CREATE TABLE Books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    author_id INT REFERENCES Authors(author_id),
    publication_year INT
);

select * from Books

INSERT INTO Books (title, author_id, publication_year) VALUES
('Harry Potter and the Sorcerer''s Stone', 1, 1997),
('1984', 2, 1949),
('Murder on the Orient Express', 3, 1934),
('Pride and Prejudice', 4, 1813),
('War and Peace', 5, 1869),
('Adventures of Huckleberry Finn', 6, 1884),
('The Old Man and the Sea', 7, 1952),
('Oliver Twist', 8, 1837),
('Les Misérables', 9, 1862),
('The Metamorphosis', 10, 1915);


CREATE TABLE Members (
    member_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    join_date DATE
);

select * from Members

INSERT INTO Members (name, join_date) VALUES
('Alice Johnson', '2023-01-15'),
('Bob Smith', '2023-02-20'),
('Charlie Brown', '2023-03-25'),
('Diana Roberts', '2023-04-10'),
('Emily Davis', '2023-05-05'),
('Frank Miller', '2023-06-18'),
('Grace Lee', '2023-07-22'),
('Harry Wilson', '2023-08-30'),
('Isabel Taylor', '2023-09-14'),
('Jack White', '2023-10-02');


CREATE TABLE Borrowed_Books (
    borrow_id SERIAL PRIMARY KEY,
    book_id BIGINT REFERENCES Books(book_id),
    member_id BIGINT REFERENCES Members(member_id),
    borrow_date DATE,
    return_date DATE
);

select * from Borrowed_Books

INSERT INTO Borrowed_Books (book_id, member_id, borrow_date, return_date) VALUES
(1, 3, '2023-04-01', '2023-04-14'),
(2, 5, '2023-05-10', '2023-05-24'),
(3, 7, '2023-06-01', '2023-06-15'),
(4, 9, '2023-07-05', '2023-07-20'),
(5, 1, '2023-08-10', '2023-08-25'),
(6, 8, '2023-09-01', '2023-09-15'),
(7, 2, '2023-10-03', '2023-10-17'),
(8, 4, '2023-11-05', '2023-11-20'),
(9, 10, '2023-12-10', '2023-12-24'),
(10, 6, '2024-01-15', '2024-01-29');

CREATE TABLE Genres (
    genre_id SERIAL PRIMARY KEY,
    genre_name VARCHAR(255)
);

SELECT * FROM Genres
INSERT INTO Genres (genre_name) VALUES
('Fantasy'),
('Dystopian'),
('Mystery'),
('Classic Romance'),
('Historical Fiction'),
('Adventure'),
('Drama'),
('Victorian Novel'),
('Tragedy'),
('Existential Fiction');

