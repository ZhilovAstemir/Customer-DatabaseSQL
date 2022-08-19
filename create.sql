CREATE DATABASE [CustomerLib_Bekov]
GO

USE [CustomerLib_Bekov]
GO


CREATE TABLE Customer
(
    CustomerId INT IDENTITY(1,1) PRIMARY KEY,
   	FirstName VARCHAR(50),
    LastName VARCHAR(50) NOT NULL,
    PhoneNumber NVARCHAR(15) CHECK (LEN(PhoneNumber)<=15 AND LEN(PhoneNumber)>0 AND TRY_CONVERT(bigint, PhoneNumber) IS NOT NULL),
    Email VARCHAR(50) DEFAULT 'Unknown' CHECK (Email LIKE '%[A-Z0-9][@][A-Z0-9]%[.][A-Z0-9]%' ) ,
    TotalPurchasesAmount MONEY CHECK(TotalPurchasesAmount > 0)
)


CREATE TABLE Address
(
    AddressId INT IDENTITY(1,1) PRIMARY KEY,
    CustomerId INT NOT NULL FOREIGN KEY REFERENCES Customer(CustomerId),
    AddressLine NVARCHAR(100) NOT NULL CHECK (LEN(AddressLine)<=100),
    AddressLine2 NVARCHAR(100) CHECK (LEN(AddressLine2)<=100),
    AddressType NVARCHAR(20) CHECK (AddressType IN ('Shipping', 'Billing')),
    City NVARCHAR(50) CHECK (LEN(City)<=50),
    PostalCode VARCHAR(6) NOT NULL,
    State NVARCHAR(20) CHECK (LEN(State)<=20),
    Country NVARCHAR(100) CHECK(Country in ('United States', 'Canada', 'Unknown')) DEFAULT 'Unknown',
)


CREATE TABLE Notes
(
    NoteId INT IDENTITY(1,1) PRIMARY KEY,
    Note NVARCHAR(255),
    CustomerId INT FOREIGN KEY REFERENCES Customer(CustomerId),
)

GO

SELECT * FROM Customer
SELECT * FROM Address
SELECT * FROM Notes