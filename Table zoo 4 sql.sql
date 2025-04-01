create table Doctor ( Doc_id INT PRIMARY KEY,Name VARCHAR NOT NULL,Specialization VARCHAR NOT NULL,Experience INT NOT NULL)

SELECT * FROM Doctor;


insert into Doctor (Doc_id, Name, Specialization, Experience) values
(201,'Dr. Sharma', 'Cardiologist', 15),
(202,'Dr. Mehta', 'Neurologist', 12),
(203,'Dr. Reddy', 'Dermatologist', 10),
(204,'Dr. Kapoor', 'Orthopedic', 8),
(205,'Dr. Verma', 'Pediatrician', 14)

SELECT * FROM Doctor;

create table Patient (P_id INT PRIMARY KEY,Name VARCHAR NOT NULL,Age INT NOT NULL,Disease VARCHAR NOT NULL,Doc_id INT NOT NULL,
    CONSTRAINT fk_Patient_Doctor FOREIGN KEY (Doc_id) REFERENCES Doctor(Doc_id)
)

SELECT * FROM patient;


insert into Patient (P_id, Name, Age, Disease, Doc_id) values
(301,'Amit', 45, 'Heart Attack', 201),
(302,'Neha', 32, 'Migraine', 202),
(303,'Rohan', 29, 'Acne', 203),
(304,'Simran', 54, 'Arthritis', 204),
(305,'Kunal', 12, 'Fever', 205),
(306,'naitik', 15, 'Cough', 205),
(307,'rohan', 16, 'Skinburn', 203),
(308,'gaurav', 12, 'Fever', 205)

create table Medicine (M_id INT PRIMARY KEY,Med_name VARCHAR NOT NULL,Price BIGINT NOT NULL,P_id INT NOT NULL,
CONSTRAINT Medicine_Patient FOREIGN KEY (P_id) REFERENCES Patient(P_id));

SELECT * FROM medicine

insert into Medicine (M_id, Med_name, Price, P_id) values
(406,'Cough Syrup', 250, 308),
(407,'Skini_b_gel', 250, 307)