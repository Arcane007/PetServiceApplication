INSERT INTO pet_table (name, gender, type)
VALUES
('Fluffy', 'F', 'CAT'),
('Max', 'M', 'DOG'),
('Charlie', 'M', 'RABBIT'),
('Milo', 'M', 'FISH'),
('Luna', 'F', 'CAT'),
('Buddy', 'M', 'DOG'),
('Coco', 'F', 'BIRD'),
('Rocky', 'M', 'RABBIT'),
('Simba', 'M', 'CAT'),
('Oscar', 'M', 'FISH'),
('Ginger', 'F', 'DOG'),
('Lola', 'F', 'BIRD'),
('Tiger', 'M', 'RABBIT'),
('Lucy', 'F', 'DOG'),
('Mittens', 'M', 'CAT'),
('Charlie', 'M', 'FISH'),
('Lucky', 'M', 'BIRD'),
('Misty', 'F', 'RABBIT'),
('Shadow', 'M', 'CAT'),
('Rocky', 'M', 'DOG'),
('Coco', 'F', 'FISH'),
('Max', 'M', 'BIRD'),
('Milo', 'M', 'RABBIT'),
('Ginger', 'F', 'DOG'),
('Luna', 'F', 'CAT'),
('Buddy', 'M', 'FISH'),
('Oscar', 'M', 'BIRD'),
('Lucy', 'F', 'RABBIT'),
('Mittens', 'M', 'DOG'),
('Charlie', 'M', 'BIRD'),
('Ginger', 'F', 'RABBIT'),
('Lola', 'F', 'FISH'),
('Tiger', 'M', 'CAT'),
('Rocky', 'M', 'DOG'),
('Coco', 'F', 'BIRD'),
('Oscar', 'M', 'RABBIT'),
('Luna', 'F', 'CAT'),
('Buddy', 'M', 'FISH'),
('Coco', 'F', 'BIRD'),
('Rocky', 'M', 'RABBIT'),
('Milo', 'M', 'CAT'),
('Ginger', 'F', 'DOG'),
('Mittens', 'M', 'BIRD'),
('Lucy', 'F', 'RABBIT'),
('Shadow', 'M', 'CAT'),
('Max', 'M', 'FISH'),
('Luna', 'F', 'BIRD'),
('Charlie', 'M', 'RABBIT'),
('Tiger', 'M', 'CAT'),
('Rocky', 'M', 'DOG'),
('Coco', 'F', 'BIRD'),
('Ginger', 'F', 'RABBIT'),
('Mittens', 'M', 'CAT'),
('Lucy', 'F', 'FISH'),
('Shadow', 'M', 'BIRD'),
('Max', 'M', 'RABBIT'),
('Luna', 'F', 'CAT'),
('Rocky', 'M', 'DOG'),
('Coco', 'F', 'BIRD'),
('Ginger', 'F', 'RABBIT'),
('Milo', 'M', 'CAT'),
('Lucy', 'M', 'FISH'),
('Mittens', 'M', 'BIRD'),
('Max', 'M', 'RABBIT'),
('Tiger', 'M', 'CAT'),
('Rocky', 'M', 'DOG'),
('Coco', 'F', 'BIRD'),
('Ginger', 'F', 'RABBIT'),
('Mittens', 'M', 'CAT'),
('Lucy', 'F', 'FISH'),
('Luna', 'F', 'BIRD'),
('Max', 'M', 'RABBIT');

INSERT INTO domestic_pet_table (id, date_of_birth)
VALUES
(1, '2018-07-26'),
(2, '2019-09-04'),
(3, '2016-06-09'),
(4, '2014-03-18'),
(5, '2012-01-24'),
(6, '2010-10-28'),
(7, '2008-07-03'),
(8, '2006-05-08'),
(9, '2004-03-13'),
(10, '2002-12-18'),
(11, '2000-11-23'),
(12, '1998-09-27'),
(13, '1996-07-04'),
(14, '1994-05-10'),
(15, '1992-02-13'),
(16, '1990-12-19'),
(17, '1988-09-25'),
(18, '1986-07-30'),
(19, '1984-05-05'),
(20, '1982-02-08'),
(21, '1980-11-15'),
(22, '1978-09-20'),
(23, '1976-06-06'),
(24, '1974-03-14'),
(25, '1972-12-18'),
(26, '1970-10-25'),
(27, '1968-08-31'),
(28, '1966-06-07'),
(29, '1964-03-12'),
(30, '1962-12-17'),
(31, '1960-07-06'),
(32, '1958-04-14'),
(33, '1956-01-20'),
(34, '1954-11-27'),
(35, '1952-09-25'),
(36, '1950-07-11');

INSERT INTO wild_pet_table (id, place_of_birth)
VALUES
(37, 'Jim Corbett National Park'),
(38, 'Ranthambore National Park'),
(39, 'Kaziranga National Park'),
(40, 'Sundarbans National Park'),
(41, 'Periyar Tiger Reserve'),
(42, 'Bandipur National Park'),
(43, 'Kanha National Park'),
(44, 'Nagarhole National Park'),
(45, 'Gir Forest National Park'),
(46, 'Sariska Tiger Reserve'),
(47, 'Pench Tiger Reserve'),
(48, 'Bhitarkanika National Park'),
(49, 'Simlipal National Park'),
(50, 'Mudumalai National Park'),
(51, 'Valmiki National Park'),
(52, 'Indravati National Park'),
(53, 'Satpura Tiger Reserve'),
(54, 'Panna National Park'),
(55, 'Silent Valley National Park'),
(56, 'Dachigam National Park'),
(57, 'Great Himalayan National Park'),
(58, 'Keoladeo National Park'),
(59, 'Bhadra Wildlife Sanctuary'),
(60, 'Nanda Devi National Park'),
(61, 'Eravikulam National Park'),
(62, 'Bhagwan Mahavir Wildlife Sanctuary'),
(63, 'Kalakkad Mundanthurai Tiger Reserve'),
(64, 'Kalakad Wildlife Sanctuary'),
(65, 'Sathyamangalam Wildlife Sanctuary'),
(66, 'Pakhal Wildlife Sanctuary'),
(67, 'Sasan Gir Wildlife Sanctuary'),
(68, 'Kudremukh National Park'),
(69, 'Bannerghatta National Park'),
(70, 'Hemis National Park'),
(71, 'Salim Ali Bird Sanctuary'),
(72, 'Wayanad Wildlife Sanctuary');

INSERT INTO owner_table (first_name, last_name, gender, city, state, mobile_number, email_id, pet_id)
VALUES
('John', 'Doe', 'M', 'Hyderabad', 'Andhra Pradesh', '9009009001', 'john.doe@scaleupindia.com', 1),
('Jane', 'Smith', 'F', 'Visakhapatnam', 'Andhra Pradesh', '9009009002', 'jane.smith@scaleupindia.com', 2),
('Michael', 'Johnson', 'M', 'Itanagar', 'Arunachal Pradesh', '9009009003', 'michael.johnson@scaleupindia.com', 3),
('Emma', 'Davis', 'F', 'Naharlagun', 'Arunachal Pradesh', '9009009004', 'emma.davis@scaleupindia.com', 4),
('William', 'Wilson', 'M', 'Dispur', 'Assam', '9009009005', 'william.wilson@scaleupindia.com', 5),
('Olivia', 'Moore', 'F', 'Guwahati', 'Assam', '9009009006', 'olivia.moore@scaleupindia.com', 6),
('James', 'Taylor', 'M', 'Patna', 'Bihar', '9009009007', 'james.taylor@scaleupindia.com', 7),
('Sophia', 'Anderson', 'F', 'Gaya', 'Bihar', '9009009008', 'sophia.anderson@scaleupindia.com', 8),
('Benjamin', 'Clark', 'M', 'Raipur', 'Chhattisgarh', '9009009009', 'benjamin.clark@scaleupindia.com', 9),
('Ava', 'Rodriguez', 'F', 'Bhilai', 'Chhattisgarh', '9009009010', 'ava.rodriguez@scaleupindia.com', 10),
('Daniel', 'Lee', 'M', 'Panaji', 'Goa', '9009009011', 'daniel.lee@scaleupindia.com', 11),
('Mia', 'Hernandez', 'F', 'Margao', 'Goa', '9009009012', 'mia.hernandez@scaleupindia.com', 12),
('Matthew', 'Lewis', 'M', 'Gandhinagar', 'Gujarat', '9009009013', 'matthew.lewis@scaleupindia.com', 13),
('Charlotte', 'Hall', 'F', 'Ahmedabad', 'Gujarat', '9009009014', 'charlotte.hall@scaleupindia.com', 14),
('Henry', 'Young', 'M', 'Chandigarh', 'Haryana', '9009009015', 'henry.young@scaleupindia.com', 15),
('Harper', 'King', 'F', 'Sonipat', 'Haryana', '9009009016', 'harper.king@scaleupindia.com', 16),
('Samuel', 'Wright', 'M', 'Shimla', 'Himachal Pradesh', '9009009017', 'samuel.wright@scaleupindia.com', 17),
('Evelyn', 'Turner', 'F', 'Dharamshala', 'Himachal Pradesh', '9009009018', 'evelyn.turner@scaleupindia.com', 18),
('Joseph', 'Adams', 'M', 'Ranchi', 'Jharkhand', '9009009019', 'joseph.adams@scaleupindia.com', 19),
('Grace', 'Parker', 'F', 'Jamshedpur', 'Jharkhand', '9009009020', 'grace.parker@scaleupindia.com', 20),
('David', 'Collins', 'M', 'Bengaluru', 'Karnataka', '9009009021', 'david.collins@scaleupindia.com', 21),
('Chloe', 'Price', 'F', 'Mysuru', 'Karnataka', '9009009022', 'chloe.price@scaleupindia.com', 22),
('Andrew', 'Murphy', 'M', 'Thiruvananthapuram', 'Kerala', '9009009023', 'andrew.murphy@scaleupindia.com', 23),
('Zoe', 'Bell', 'F', 'Kochi', 'Kerala', '9009009024', 'zoe.bell@scaleupindia.com', 24),
('Daniel', 'Reed', 'M', 'Bhopal', 'Madhya Pradesh', '9009009025', 'daniel.reed@scaleupindia.com', 25),
('Ella', 'Cook', 'F', 'Indore', 'Madhya Pradesh', '9009009026', 'ella.cook@scaleupindia.com', 26),
('Alexander', 'Bailey', 'M', 'Mumbai', 'Maharashtra', '9009009027', 'alexander.bailey@scaleupindia.com', 27),
('Mila', 'Hill', 'F', 'Pune', 'Maharashtra', '9009009028', 'mila.hill@scaleupindia.com', 28),
('Nicholas', 'Cooper', 'M', 'Imphal', 'Manipur', '9009009029', 'nicholas.cooper@scaleupindia.com', 29),
('Aria', 'Baker', 'F', 'Bishnupur', 'Manipur', '9009009030', 'aria.baker@scaleupindia.com', 30),
('Christopher', 'Gonzalez', 'M', 'Shillong', 'Meghalaya', '9009009031', 'christopher.gonzalez@scaleupindia.com', 31),
('Scarlett', 'Ward', 'F', 'Tura', 'Meghalaya', '9009009032', 'scarlett.ward@scaleupindia.com', 32),
('Andrew', 'Butler', 'M', 'Aizawl', 'Mizoram', '9009009033', 'andrew.butler@scaleupindia.com', 33),
('Hannah', 'Torres', 'F', 'Lunglei', 'Mizoram', '9009009034', 'hannah.torres@scaleupindia.com', 34),
('Matthew', 'Ramirez', 'M', 'Kohima', 'Nagaland', '9009009035', 'matthew.ramirez@scaleupindia.com', 35),
('Avery', 'Flores', 'F', 'Dimapur', 'Nagaland', '9009009036', 'avery.flores@scaleupindia.com', 36),
('William', 'Ward', 'M', 'Bhubaneswar', 'Odisha', '9009009037', 'william.ward@scaleupindia.com', 37),
('Victoria', 'Cruz', 'F', 'Cuttack', 'Odisha', '9009009038', 'victoria.cruz@scaleupindia.com', 38),
('James', 'Simmons', 'M', 'Chandigarh', 'Punjab', '9009009039', 'james.simmons@scaleupindia.com', 39),
('Madison', 'Perry', 'F', 'Amritsar', 'Punjab', '9009009040', 'madison.perry@scaleupindia.com', 40),
('Daniel', 'Powell', 'M', 'Jaipur', 'Rajasthan', '9009009041', 'daniel.powell@scaleupindia.com', 41),
('Lily', 'Long', 'F', 'Hanumangarh', 'Rajasthan', '9009009042', 'lily.long@scaleupindia.com', 42),
('Joseph', 'Bell', 'M', 'Gangtok', 'Sikkim', '9009009043', 'joseph.bell@scaleupindia.com', 43),
('Aubrey', 'Gomez', 'F', 'Namchi', 'Sikkim', '9009009044', 'aubrey.gomez@scaleupindia.com', 44),
('Michael', 'Cooper', 'M', 'Chennai', 'Tamil Nadu', '9009009045', 'michael.cooper@scaleupindia.com', 45),
('Emily', 'Russell', 'F', 'Coimbatore', 'Tamil Nadu', '9009009046', 'emily.russell@scaleupindia.com', 46),
('David', 'Perez', 'M', 'Hyderabad', 'Telangana', '9009009047', 'david.perez@scaleupindia.com', 47),
('Avery', 'Carter', 'F', 'Warangal', 'Telangana', '9009009048', 'avery.carter@scaleupindia.com', 48),
('James', 'Harris', 'M', 'Agartala', 'Tripura', '9009009049', 'james.harris@scaleupindia.com', 49),
('Scarlett', 'Price', 'F', 'Udaipur', 'Tripura', '9009009050', 'scarlett.price@scaleupindia.com', 50),
('Daniel', 'Hall', 'M', 'Lucknow', 'Uttar Pradesh', '9009009051', 'daniel.hall@scaleupindia.com', 51),
('Sophia', 'Sanchez', 'F', 'Kanpur', 'Uttar Pradesh', '9009009052', 'sophia.sanchez@scaleupindia.com', 52),
('Joseph', 'Young', 'M', 'Dehradun', 'Uttarakhand', '9009009053', 'joseph.young@scaleupindia.com', 53),
('Ava', 'Rogers', 'F', 'Haridwar', 'Uttarakhand', '9009009054', 'ava.rogers@scaleupindia.com', 54),
('Jacob', 'Morgan', 'M', 'Kolkata', 'West Bengal', '9009009055', 'jacob.morgan@scaleupindia.com', 55),
('Olivia', 'Hernandez', 'F', 'Howrah', 'West Bengal', '9009009056', 'olivia.hernandez@scaleupindia.com', 56),
('Ethan', 'Foster', 'M', 'Port Blair', 'Andaman and Nicobar Islands', '9009009057', 'ethan.foster@scaleupindia.com', 57),
('Sophia', 'Gonzalez', 'F', 'Diglipur', 'Andaman and Nicobar Islands', '9009009058', 'sophia.gonzalez@scaleupindia.com', 58),
('Michael', 'Butler', 'M', 'Chandigarh', 'Chandigarh', '9009009059', 'michael.butler@scaleupindia.com', 59),
('Ava', 'Torres', 'F', 'Chandigarh', 'Chandigarh', '9009009060', 'ava.torres@scaleupindia.com', 60),
('Joseph', 'Ramirez', 'M', 'Silvassa', 'Dadra and Nagar Haveli and Daman and Diu', '9009009061', 'joseph.ramirez@scaleupindia.com', 61),
('Olivia', 'Ward', 'F', 'Daman', 'Dadra and Nagar Haveli and Daman and Diu', '9009009062', 'olivia.ward@scaleupindia.com', 62),
('Daniel', 'Bell', 'M', 'Kavaratti', 'Lakshadweep', '9009009063', 'daniel.bell@scaleupindia.com', 63),
('Emily', 'Gomez', 'F', 'Minicoy', 'Lakshadweep', '9009009064', 'emily.gomez@scaleupindia.com', 64),
('James', 'Harris', 'M', 'New Delhi', 'Delhi', '9009009065', 'james.harris2@scaleupindia.com', 65),
('Scarlett', 'Price', 'F', 'Ghitorni', 'Delhi', '9009009066', 'scarlett.price2@scaleupindia.com', 66),
('Jacob', 'Hall', 'M', 'Puducherry', 'Puducherry', '9009009067', 'jacob.hall@scaleupindia.com', 67),
('Sophia', 'Sanchez', 'F', 'Uzhavarkarai', 'Puducherry', '9009009068', 'sophia.sanchez2@scaleupindia.com', 68),
('Joseph', 'Young', 'M', 'Srinagar', 'Jammu and Kashmir', '9009009069', 'joseph.young2@scaleupindia.com', 69),
('Ava', 'Rogers', 'F', 'Jammu', 'Jammu and Kashmir', '9009009070', 'ava.rogers2@scaleupindia.com', 70),
('Daniel', 'Morgan', 'M', 'Leh', 'Ladakh', '9009009071', 'daniel.morgan@scaleupindia.com', 71),
('Olivia', 'Hernandez', 'F', 'Kargil', 'Ladakh', '9009009072', 'olivia.hernandez2@scaleupindia.com', 72);