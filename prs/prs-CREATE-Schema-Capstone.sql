-- create and select the database
 DROP DATABASE IF EXISTS prs;
CREATE DATABASE prs;
USE prs;
-- create User table
-- DROP TABLE IF EXISTS User;
Create table User (
ID 			    integer 		primary key auto_increment,
Username		varchar(20) 	not null unique,
Password 		varchar(10) 	not null,
FirstName 		varchar(20) 	not null,
LastName	    varchar(20) 	not null,
PhoneNumber		varchar(12) 	not null,
Email			varchar(75) 	not null,
IsReveiwer		Tinyint 		not null,
IsAdmin			Tinyint			not null
);


-- create Request table
Create table Request (
ID 					integer          primary key auto_increment,
UserID				integer          not null,
Description 		integer(100)     not null,
Justification 		varchar(255)     not null,
DateNeeded     		DATE             not null,
DeliveryMode   		varchar(25)      not null,
Status				varchar(20)      not null,
Total				DECIMAL(10,2)    not null,
SubmittedDate		DATETIME         not null,
ReasonForRejection	varchar(100),
Foreign Key (UserID) references User(ID)
);


-- create Vender table
Create table Vendor (
ID 			integer 		primary key auto_increment,
Code 		varchar(10) 	not null unique,
Name		varchar(255) 	not null,
Address 	varchar(255) 	not null,
City		varchar(255)    not null,
State		varchar(2)      not null,
Zip			varchar(5)      not null,
PhoneNumber	varchar(12)     not null,
Email		varchar(100)    not null
);

-- create Product table
Create table Product (
ID 					integer          primary key auto_increment,
VendorID			integer          not null,
PartNumber 			varchar(50)      not null,
Name 				varchar(150)     not null,
Price				DECIMAL(10,2)    not null,
Unit    			varchar(255),
PhotoPath			varchar(255),
Foreign Key (VendorID) references vendor (id),
CONSTRAINT  vendor_part unique (VendorID,PartNumber)
);


-- create LineItem table
Create table LineItem (
ID 					integer primary key auto_increment,
RequestID			integer          not null,
ProductID 			integer              not null,
Quantity            integer				 not null,
Foreign Key (ProductID) references product(ID),
Foreign Key (RequestID) references request(ID),
CONSTRAINT req_pdt unique (RequestID, productID)
);

insert into user values
	(1, 'SYSTEM', 'XXXXX', 'System', 'System', 'XXX-XXX-XXXX', 'system@test.com', 0,0);
    
insert into vendor values
	(1, 'BB-1001', 'Best Buy', '100 Best Buy Street', 'Lousville', 'KY', '40207', '502-111-9099', 'geeksquad@bestbuy.com'),
    (2, 'AP-1001', 'Apple Inc', '1 Infinite Loop', 'Cupertino', 'CA', '95014', '800-13-4567', 'genius@apple,com'),
    (3, 'AM-1001', 'Amazon', '410 Terry Ave. North', 'Seatlle', 'WA', '98109', '206-266-1000', 'amazon@amazon.com'),
    (4, 'ST-1001', 'Staples', '9550 Mason Montgomery Rd', 'Mason', 'OH', '45040', '513-754-0235', 'support@orders.com'),
    (5, 'MC-1001', 'Micro Center', '11755 Mosteller Rd', 'Sharonville', 'OH', '45241', '513-782-8500', 'support@microcenter.com');


insert into Product values
	(1, 1, 'ME280LL', 'iPad Mini 2', 296.99, '',''),
    (2, 2, 'ME280LL', 'iPad Mini 2', 299.99, '',''),
    (3, 3, '105810', 'Hammermill Paper, Premium Multi-Purpose Paper Poly Wrap', 8.99, '1 Ream / 500 Sheets', ''),
    (4, 4, '122374', 'Hammermill® Copy Plus Copy Paper, 8 1/2" X 11", Case', 29.99, '1 Casee, 10 Reams, 500 Sheets per ream',''),
    (5, 4, '784551', 'Logitech M325 Wireless Optical Mouse, Ambidextrous, Black', 14.99, '', ''),
    (6, 4, '382955', 'Staples Mouse Pad, Black', 2.99, '',''),
    (7, 4, '2122178', 'AOC 24-Inch Class LED Monitor', 99.99, '',''),
    (8, 4, '2460649', 'Laptop HP Notebook 15-AY16NR', 529.99, '',''),
    (9, 4, '2256788', 'Laptop Dell i3552-3240BLK 15.6"', 239.99, '',''),
    (10, 4, 'IM12M9520', 'Laptop Acer Acer™ Aspire One Cloudbook 14"', 224.99, '', ''),
    (11, 4, '940600', 'Canon imageCLASS Copier (D530)', 99.99, '',''),
    (12, 5, '288148', 'Acer Aspire ATC-780A-UR12 Desktop Computer', 399.99, '', '/images/AcerAspireDesktop.jpg'),
    (13, 5, '279364', 'Lenovo IdeaCentre All-In-One Desktop', 349.99, '', '/images/LenovoIdeaCenter.jpg');
    
    
    



