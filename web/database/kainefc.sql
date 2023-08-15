-- Create the database
CREATE DATABASE fc_charities;
\c fc_charities;

CREATE TABLE Admin (
Admin_id serial PRIMARY KEY, 
u_Name varchar(20) unique NOT null, 
u_Password varchar(20));

CREATE TABLE Charities (
Ch_id serial PRIMARY KEY, 
type varchar(20) NOT null,
Name varchar(20) NOT null, 
Date timestamp with time zone NOT NULL DEFAULT current_timestamp, 
Bn_id int,  
Admin_id int);

ALTER TABLE Charities 
ADD CONSTRAINT fk_Charities_1 
FOREIGN KEY (Admin_id) 
REFERENCES Admin (Admin_id) 
ON UPDATE CASCADE ON DELETE RESTRICT;

CREATE TABLE Beneficiaries (
Bn_id serial PRIMARY KEY, 
F_Name varchar(20) unique NOT null,
L_Name varchar(20) unique NOT null, 
Sex varchar(20));

ALTER TABLE Charities 
ADD CONSTRAINT fk_Charities_2
FOREIGN KEY (Bn_id) 
REFERENCES Beneficiaries (Bn_id) 
ON UPDATE CASCADE ON DELETE RESTRICT;



