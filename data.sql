USE CustomerLib_Bekov
GO


INSERT INTO Customer
    (FirstName,LastName,PhoneNumber,Email,TotalPurchasesAmount)
VALUES
    ('Jack', 'Rockman', '11584684650', 'jack.scsv32@gmail.com', '8000'),
    ('Mick', 'Longan', '74416541654', 'longan.sc@gmail.com', '2000')


INSERT INTO Address
    (AddressLine, AddressLine2, AddressType, City, PostalCode, State, Country, CustomerId)
Values
--Right values
('Long St.', '265', 'Shipping', 'Phoenix', '22459', 'Arizona', 'United States', 1),
('Long St.', '265', 'Billing', 'Phoenix', '22459', 'Arizona', 'Canada', 2),
--Invalid values
('Long St.', '265', '', 'Phoenix', '22459', 'Arizona', 'United States', 3),
('', '265', 'Shipping', 'Phoenix', '22459', 'Arizona', 'United States', 4),
('Long St.', '265', 'Unknown', 'Phoenix', '22459', 'Arizona', 'United States', 5),
('Long St.', '265', 'Shipping', '', '', '', 'United States', 6),
('Long St.', '265', 'Shipping', '', '22459', 'Arizona', 'United States', 7),
('Long St.', '265', 'Shipping', 'Phoenix', '', 'Arizona', 'United States', 8),
('Long St.', '265', 'Shipping', 'Phoenix', '22459', '', 'United States', 9),
('Long St.', '265', 'Shipping', 'Phoenix', '22459', 'Arizona', '', 10)

GO


INSERT Notes 
(Note, CustomerId)
Values

('Hello', 1),
('What is going on', 2),
('It is ok', 3),
(165165165, 4),
('!@$^%!*#^', 5),
('Hi!!!', 6),
('', 7),
(null, 8),
('Ninth', 9),
('---The last one---', 10)

GO