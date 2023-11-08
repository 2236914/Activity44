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

--3	Create new branch named "feat/create-table-appointments"
CREATE TABLE appointments (
    appointed SERIAL PRIMARY KEY,
    animalid INT,
    appointdate DATE,
    reason VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid)
);

--4	Create new branch named "feat/create-table-doctors"
CREATE TABLE doctors (
    doctorid SERIAL PRIMARY KEY,
    dfirstname VARCHAR(50),
    dlastname VARCHAR(50),
    specialty VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

--4	Create new branch named "feat/create-table-invoices"
CREATE TABLE invoices (
    invoiceid SERIAL PRIMARY KEY,
    appointed INT,
    totalamount NUMERIC(10, 2),
    paymentdate DATE,
    FOREIGN KEY (appointed) REFERENCES appointments(appointed)
);

