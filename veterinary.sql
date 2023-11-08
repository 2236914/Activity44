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

--2.	Create new branch named "feat/create-table-animals"
CREATE TABLE animals (
    animalid SERIAL PRIMARY KEY,
    name VARCHAR(50),
    species VARCHAR(50),
    breed VARCHAR(50),
    dateofbirth DATE,
    gender VARCHAR(10),
    color VARCHAR(50),
    ownerid INT,
    FOREIGN KEY (ownerid) REFERENCES owners(PK)
);

