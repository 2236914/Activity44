CREATE DATABASE veterinary;

--1.	Create new branch named "feat/create-table-owners
CREATE TABLE owners (
    PK SERIAL PRIMARY KEY,
    ofirstname VARCHAR(50),
    olastname VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

