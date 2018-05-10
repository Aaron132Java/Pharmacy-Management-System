DROP TABLE IF EXISTS Dispensal;
DROP TABLE IF EXISTS Payment;
DROP TABLE IF EXISTS Patient;
DROP TABLE IF EXISTS Staff;
DROP TABLE IF EXISTS Staff_Position;
DROP TABLE IF EXISTS Stock;
DROP TABLE IF EXISTS Pharmacy;
DROP TABLE IF EXISTS Distributor;
DROP TABLE IF EXISTS Drug;
DROP TABLE IF EXISTS Form;
DROP TABLE IF EXISTS Category;




CREATE TABLE Distributor
(
distid INTEGER NOT NULL,
distName VARCHAR(20),
distAddress VARCHAR(30),
distCity VARCHAR(20),
distPostcode CHAR(8),
distContact CHAR(12),
PRIMARY KEY(distid)
);

CREATE TABLE Pharmacy
(
pharmid INTEGER NOT NULL,
distid INTEGER NOT NULL,
pharmName VARCHAR(20),
pharmAddress VARCHAR(30),
pharmCity VARCHAR(20),
pharmPostcode CHAR(8),
pharmContact CHAR(12),
PRIMARY KEY (pharmid),
FOREIGN KEY (distid) REFERENCES Distributor (distid) 
);

CREATE TABLE Staff_Position
(
staffPosid INTEGER NOT NULL,
staffPos VARCHAR (20),
PRIMARY KEY (staffPosid)
);

CREATE TABLE Staff
(
staffid INTEGER NOT NULL,
staffName VARCHAR(20),
staffDoB DATE,
staffAddress VARCHAR(30),
staffCity VARCHAR(20),
staffPostcode CHAR(8),
staffContact CHAR(12),
pharmid INTEGER NOT NULL,
staffPosid INTEGER NOT NULL,
PRIMARY KEY (staffid),
FOREIGN KEY (pharmid) REFERENCES Pharmacy (pharmid),
FOREIGN KEY (staffPosid) REFERENCES Staff_Position (staffPosid)
);

CREATE TABLE Form
(
formid INTEGER NOT NULL,
form CHAR (10),
PRIMARY KEY (formid)
);

CREATE TABLE Category
(
catid INTEGER NOT NULL,
category VARCHAR (20),
PRIMARY KEY (catid)
);

CREATE TABLE Drug
(
drugid INTEGER NOT NULL,
drugName VARCHAR (30),
drugBrand VARCHAR (20),
perPack CHAR (5),
price FLOAT (5),
formid INTEGER NOT NULL,
catid INTEGER NOT NULL,
prescription VARCHAR (3),
description VARCHAR (100),
PRIMARY KEY (drugid),
FOREIGN KEY (formid) REFERENCES Form (formid),
FOREIGN KEY (catid) REFERENCES Category (catid)
);

CREATE TABLE Stock
(
pharmid INTEGER NOT NULL,
drugid INTEGER NOT NULL,
stock INTEGER NOT NULL,
FOREIGN KEY (pharmid) REFERENCES Pharmacy (pharmid),
FOREIGN KEY (drugid) REFERENCES Drug (drugid)
);

CREATE TABLE Patient
(
patid INTEGER NOT NULL AUTO_INCREMENT,
patName VARCHAR (20),
patDoB DATE,
patAddress VARCHAR (30),
patCity VARCHAR (20),
patPostcode CHAR (8),
patContact CHAR (12),
PRIMARY KEY (patid)
);

CREATE TABLE Payment
(
payid INTEGER NOT NULL AUTO_INCREMENT,
patid INTEGER NOT NULL,
staffid INTEGER NOT NULL,
amount FLOAT (5),
payDate DATE,
PRIMARY KEY (payid),
FOREIGN KEY (patid) REFERENCES Patient (patid),
FOREIGN KEY (staffid) REFERENCES Staff (staffid)
);

CREATE TABLE Dispensal
(
patid INTEGER NOT NULL,
staffid INTEGER NOT NULL,
pharmid INTEGER NOT NULL,
drugid INTEGER NOT NULL,
packs INTEGER NOT NULL,
price FLOAT(5),
payid INTEGER NOT NULL,
dispDate DATE,
FOREIGN KEY (patid) REFERENCES Patient (patid),
FOREIGN KEY (staffid) REFERENCES Staff (staffid),
FOREIGN KEY (pharmid) REFERENCES Pharmacy (pharmid),
FOREIGN KEY (drugid) REFERENCES Drug (drugid),
FOREIGN KEY (payid) REFERENCES Payment (payid)
);