SET foreign_key_checks = 0;

DELETE FROM Stock; 
DELETE FROM Payment;
DELETE FROM Dispensal;
DELETE FROM Drug; 
DELETE FROM Form;
DELETE FROM Category;
DELETE FROM Staff;
DELETE FROM Patient;
DELETE FROM Pharmacy;
DELETE FROM Staff_Position;
DELETE FROM Distributor; 

SET foreign_key_checks = 1;

INSERT INTO Distributor(distid, distName, distAddress, distCity, distPostcode, distContact) values
(1, 'Napp Pharmaceuticals', '190 Nicolson Street', 'London', 'LD1 3TC', '074772135464'),
(2, 'Actavis', '66 Board Lane', 'Leeds', 'LS14 3EA', '011375496587'),
(3, 'Aurobindo', '32 Prospect Drive', 'Huddersfield', 'HD1 2HR', '014842167898'),
(4, 'Manx Pharmaceuticals', '45 Rainville Avenue', 'Halifax', 'HX2 7TV', '546879213197'),
(5, 'TEVN', '190 Plastic Avenue', 'Hull', 'HL4 3BT', '074578164958');

INSERT INTO Pharmacy(pharmid, distid, pharmName, pharmAddress, pharmCity, pharmPostcode, pharmContact) values
(1, 1, 'Lloyds', '17 Apple Street', 'Huddersfield', 'HD2 1BX', '014840011230'),
(2, 2, 'Freemans', '13 Titan Avenue', 'Bradford', 'BF1 3TX', '090111050103'),
(3, 3, 'Boots', '90 Parkway Drive', 'Leeds', 'LS1 3AC', '011321926464'),
(4, 4, 'Super Drug', '123 White Chapel', 'Halifax', 'HX2 1PO', '074772192646'),
(5, 5, 'Green Head', '132 Cinema Lane', 'London', 'LD5 5TT', '011855599999');

INSERT INTO Staff_Position(staffPosid, staffPos) values
(1, 'Pharmacist'),
(2, 'Assistant');

INSERT INTO Staff(staffid, staffName, staffDoB, staffAddress, staffCity, staffPostcode, staffContact, pharmid, staffPosid) values
(1,		'John RUSSELL',	'1991-11-11', '56 Clover Drive',	'Preston', 	'PR1 1WS',	'02578964358', 1, 1),
(2,	 	'Carl BACHS',   '1991-04-16', '69 Firth Street',	'Huddersfield',	'HD1 3DH',	'01734982664', 1, 1),
(3,	 	'Emanuel FORT', '1984-10-01', '123 Main Street',	'Halifax', 	'PR1 3GL',	'03468974566', 1, 1),
(4,	 	'Ian HALL', 	'1971-01-03', '32 Manse Road',	'Preston', 	'PR9 1NZ',	'07895855792', 1, 1),
(5,	 	'Karen JUDA', 	'1985-12-12', '22 Deer Street',	'Huddersfield', 'HD1 1WN',	'01470258036', 1, 1),
(6,	 	'Mikael LOHM', 	'1977-04-30', '321 Duck Street',	'Manchester',	'M11 2MA',	'03216549870', 2, 1),
(7,	 	'Olive NEPAL', 	'1989-06-24', '6 Argyle Street',	'Huddersfield', 'HD1 5AH',	'01597538520', 2, 1),
(8,	 	'John White', 	'1991-08-01', 	'1 Red Street',		'Blackburn', 	'BB3 3BB',	'01741085520', 2, 1),
(9,	 	'Anne BUCKNER', '1991-01-08',  	'2 Orange Road',	'Wakefield', 	'WA1 1WA',	'01593571597', 2, 1),
(10,  	'Diamuid CUSAAK', '1988-07-21',  '3 Yellow Drive',	'Wakefield', 	'WA2 2AW',	'01321321567', 2, 1),
(11, 	'Emma DODD',  	'1979-11-11', 	'4 Green Street',	'Burnley', 	'BB9 9BB',	'02602601471', 3, 2),
(12, 	'Frances EARLY', '1990-10-10',  '5 Blue Avenue',	'Burnley', 	'BB9 1AZ',	'01212147897', 3, 2),
(13,	'Gupal FAZOOK', '1986-01-11', '6 Indigo Lane',	'Burnley', 	'BB9 2QA',	'03698741036', 3, 2),
(14,	'Hanni GUPTAR', '1989-01-30', '7 Violet View',	'Mirfield', 	'WA9 9OP',	'04789654321', 3, 2),
(15,	'Ishmail HOWE', '1970-06-11', '8 Purple Haze',	'Mirfield', 	'WA9 1IO',	'05478998745', 3, 2),
(16,	'Jenny INNIS',  '1991-11-11', '9 Pink Plaza',		'Mirfield', 	'WA9 2QW',	'06555777896', 4, 2),
(17,	'Keith JACKMAN', '1981-03-21',  '1 Crimson Crescent',	'Mirfield', 	'WA9 3TR',	'01479879879', 4, 2),
(18,	'Joe Keogh', 	'1984-05-22', '2 Fergus Drive', 	'Huddersfield', 'HD2 7SX',	'01233685432', 4, 2),
(19,	'Carol Farrel', '1988-12-01', '6 Achray Street', 	'Halifax', 	'HX1 9DX',	'01455870023', 4, 2),
(20,	'Emma MONTFORT', '1980-12-25', '63 Well Street', 	'Halifax', 	'HX2 6TT',	'01455722142', 4, 2),
(21,	'Tony Shaw', 	'1979-04-11', '12 Park Place', 	'Halifax', 	'HX4 0QR',	'01455462887', 5, 1),
(22,	'Selwyn RUSSELL', '1996-10-07', '1 Amber Buildings',	'Blackburn', 	'BB7 3CD',	'01234685432', 5, 1),
(23,	'Eric THOMAS', 	'1992-06-16', '2 Beswick Crescent',	'Blackburn', 	'BB2 4RT',	'01345870023', 5, 1),
(24,	'Denis CHOW', 	'1986-07-15', '3 Croft Drive',	'Wakefield', 	'WA3 4EF',	'01456722142', 5, 1),
(25,	'Alice Eve',	'1969-03-22', '4 Dipper Grove',	'Wakefield', 	'WA4 5FG',	'01897462887', 5, 1),
(26,	'Ben Hurr',		'1984-10-10', '5 Epping Grange',	'Burnley', 		'BB9 6GH',	'01322837461', 1, 2),
(27,	'Carl Smith',	'1975-04-11', '6 Fairway Hill', 	'Mirfield', 	'WA9 7HJ',	'01556904883', 2, 2),
(28,	'David Antil',	'2000-11-11', '7 Grouse Hall',	'Huddersfield',	'HD7 8JK',	'01334583300', 3, 2),
(29,	'Elsie Tanner', '1977-06-24', '8 Hornbill Lane',	'Huddersfield',	'HD8 9KL',	'01551237791', 4, 2),
(30,	'Faith Brown', 	'1988-12-02', '9 Ipstone Lodge',	'Manchester',	'MK9 0LM',	'01446984223', 5, 2),
(31,	'George Brown', '1999-01-24', '10 Jay Mall', 		'Manchester',	'ML7 2MN',	'01287326648', 1, 1);

INSERT INTO Form(formid, form) values
(1, 'Tablet'),
(2, 'Capsule'),
(3, 'Liquid'),
(4, 'Patch'),
(5, 'Modified'),
(6, 'Cream');

INSERT INTO Category(catid, category) values
(1, 'Pain Killer'),
(2, 'Anti-biotic'),
(3, 'Anti-Inflamatory'),
(4, 'Anti-Depressant'),
(5, 'Anti-Anxiaty'),
(6, 'Anti-Nausia'),
(7, 'Sleeping Aid');

INSERT INTO Drug(drugid, drugName, drugBrand, perPack, price, formid, catid, prescription, description) values
(1, 'Paracetomol 500mg', 'Paracetomol', 24, 0.25, 1, 1, 'No', ''),
(2, 'Codiene/Paracetamol 30/500mg', 'Co-Codamol', 50, 8.60, 1, 1, 'Yes', ''),
(3, 'Codiene/Paracetamol 15/500mg', 'Co-Codamol', 50, 8.60, 1, 1, 'Yes', ''),
(4, 'Codiene/Paracetamol 8/500mg', 'Co-Codamol', 32, 8.60, 1, 1, 'No', ''),
(5, 'Oxycodone 10mg', 'Oxycontin', 56, 8.60, 5, 1, 'Yes', ''),
(6, 'Oxycodone 20mg', 'Oxycontin', 56, 8.60, 5, 1, 'Yes', ''),
(7, 'Oxycodone 40mg', 'Oxycontin', 56, 8.60, 5, 1, 'Yes', ''),
(8, 'Oxycodone 80mg', 'Oxycontin', 56, 8.60, 5, 1, 'Yes', ''),
(9, 'Tramadol 20mg', 'Tramadol', 50, 8.60, 2, 1, 'Yes', ''),
(10, 'Tramadol 50mg', 'Tramadol', 50, 8.60, 2, 1, 'Yes', ''),
(11, 'Morphine 30mg', 'Zomorph', 56, 8.60, 3, 1, 'Yes', ''),
(12, 'Fentanyl 25mcg/hr', 'Fentanyl', 10, 8.60, 4, 1, 'Yes', ''),
(13, 'Fentanyl 50mcg/hr', 'Fentanyl', 10, 8.60, 4, 1, 'Yes', ''),
(14, 'Iburprofen 200mg', 'Neurofen', 36, 2.80, 1, 3, 'No', ''),
(15, 'Naproxen 500mg', 'Naproxen', 28, 3.50, 1, 3, 'No', ''),
(16, 'Propranolol 40mg', 'Propranolol', 28, 8.60, 1, 5, 'Yes', ''),
(17, 'Mirtazapine 15mg', 'Mirtazipine', 28, 8.60, 1, 5, 'Yes', ''),
(18, 'Mirtazapine 30mg', 'Mirtazipine', 28, 8.60, 1, 5, 'Yes', ''),
(19, 'Mirtazapine 45mg', 'Mirtazipine', 28, 8.60, 1, 5, 'Yes', ''),
(20, 'Amoxicillin 652mg', 'Co-Amoxiclav', 42, 8.60, 1, 2, 'Yes', ''),
(21, 'Clarithromycin 250mg', 'Clarithromycin', 42, 8.60, 2, 2, 'Yes', ''),
(22, 'Quetiapine 50mg', 'Atrolak', 28, 8.60, 5, 4, 'Yes', ''),
(23, 'Zopiclone 15mg', 'Zopiclone', 7, 8.60, 1, 7, 'Yes', ''),
(24, 'Cinnarizine 15mg', 'Cinnarizine', 84, 8.60, 1, 6, 'Yes', ''),
(25, 'Prochlorperazine 3mg', 'Prochlorperazine', 30, 8.60, 1, 6, 'Yes', ''),
(26, 'Lansoprazole 30mg', 'Lansoprazole', 28, 3.20, 2, 6, 'No', ''),
(27, 'Amitriptyline 50mg', 'Amitriptyline', 38, 8.60, 1, 4, 'Yes', ''),
(28, 'Sertraline 25mg', 'Sertraline', 28, 8.60, 1, 4, 'Yes', ''),
(29, 'Diazepam 10mg', 'Diazepam', 50, 8.60, 2, 5, 'Yes', ''),
(30, 'fluoxetine 20mg', 'Prozac', 28, 8.60, 1, 4, 'Yes', '');

INSERT INTO Stock(pharmid, drugid, stock) values
(1, 1, 5), 
(1, 2, 10),
(1, 3, 10),
(1, 4, 100),
(1, 5, 200),
(1, 6, 10),
(1, 7, 100),
(1, 8, 10),
(1, 9, 100),
(1, 10, 100),
(1, 11, 100),
(1, 12, 1),
(1, 13, 100),
(1, 14, 200),
(1, 15, 10),
(1, 16, 100),
(1, 17, 100),
(1, 18, 10),
(1, 19, 200),
(1, 20, 100),
(1, 21, 1),
(1, 22, 100),
(1, 23, 100),
(1, 24, 10),
(1, 25, 100),
(1, 26, 1),
(1, 27, 100),
(1, 28, 200),
(1, 29, 10),
(1, 30, 10),
(2, 1, 100),
(2, 2, 100),
(2, 3, 100),
(2, 4, 100),
(2, 5, 100),
(2, 6, 100),
(2, 7, 100),
(2, 8, 100),
(2, 9, 100),
(2, 10, 100),
(2, 11, 100),
(2, 12, 100),
(2, 13, 100),
(2, 14, 100),
(2, 15, 100),
(2, 16, 100),
(2, 17, 100),
(2, 18, 100),
(2, 19, 100),
(2, 20, 100),
(2, 21, 100),
(2, 22, 100),
(2, 23, 100),
(2, 24, 100),
(2, 25, 100),
(2, 26, 100),
(2, 27, 100),
(2, 28, 100),
(2, 29, 100),
(2, 30, 100),
(3, 1, 100),
(3, 2, 100),
(3, 3, 100),
(3, 4, 100),
(3, 5, 100),
(3, 6, 100),
(3, 7, 100),
(3, 8, 100),
(3, 9, 100),
(3, 10, 100),
(3, 11, 100),
(3, 12, 100),
(3, 13, 100),
(3, 14, 100),
(3, 15, 100),
(3, 16, 100),
(3, 17, 100),
(3, 18, 100),
(3, 19, 100),
(3, 20, 100),
(3, 21, 100),
(3, 22, 100),
(3, 23, 100),
(3, 24, 100),
(3, 25, 100),
(3, 26, 100),
(3, 27, 100),
(3, 28, 100),
(3, 29, 100),
(3, 30, 100),
(4, 1, 100),
(4, 2, 100),
(4, 3, 100),
(4, 4, 100),
(4, 5, 100),
(4, 6, 100),
(4, 7, 100),
(4, 8, 100),
(4, 9, 100),
(4, 10, 100),
(4, 11, 100),
(4, 12, 100),
(4, 13, 100),
(4, 14, 100),
(4, 15, 100),
(4, 16, 100),
(4, 17, 100),
(4, 18, 100),
(4, 19, 100),
(4, 20, 100),
(4, 21, 100),
(4, 22, 100),
(4, 23, 100),
(4, 24, 100),
(4, 25, 100),
(4, 26, 100),
(4, 27, 100),
(4, 28, 100),
(4, 29, 100),
(4, 30, 100),
(5, 1, 100),
(5, 2, 100),
(5, 3, 100),
(5, 4, 100),
(5, 5, 100),
(5, 6, 100),
(5, 7, 100),
(5, 8, 100),
(5, 9, 100),
(5, 10, 100),
(5, 11, 100),
(5, 12, 100),
(5, 13, 100),
(5, 14, 100),
(5, 15, 100),
(5, 16, 100),
(5, 17, 100),
(5, 18, 100),
(5, 19, 100),
(5, 20, 100),
(5, 21, 100),
(5, 22, 100),
(5, 23, 100),
(5, 24, 100),
(5, 25, 100),
(5, 26, 100),
(5, 27, 100),
(5, 28, 100),
(5, 29, 100),
(5, 30, 100);

INSERT INTO Patient(patName, patDoB, patAddress, patCity, patPostcode, patContact) values
("Unity Mckay",	'1991-08-01',	"81 Duffy Street.",	"Preston",		"PR4 2QW",	"37107903969"),
("Melissa Dejesus", '1999-01-24', "16 Acacia Avenue",	"Halifax",		"HX3 2WE",	"92797694789"),
("Denton Farley", '1974-11-11',	"9 Duis Avenue",	"Halifax",		"HX7 3ER",	"96899499063"),
("Jordan Hurst",	'1979-11-14',	"99 Dubai Road",	"Halifax",		"HX3 3TR",	"74442644378"),
("Nina Silva",	'1999-01-24',	"11 A Street",		"Halifax",		"HX2 2ZR",	"69331438486"),
("Iola Vance",	'1997-11-14',	"21 Quis Rd.",		"Huddersfield",		"HD2 3AS",	"12601965985"),
("Edan Rosario",	'1993-03-23',	"4 Utley Street.",	"Burnley",		"BB17 4RT",	"03480897136"),
("Adam Calhoun",	'1997-11-14',	"21 Dictum Street.",	"Preston",		"PR22 2ED",	"28407103708"),
("Gisela Curtis", '1997-11-14',	"40 Auctor Road.",	"Blackburn",		"BB1 1BB",	"32405150318"),
("Sara Barry",	'1992-07-06',	"15 Felis Street",	"Wakefield",		"WA4 2AS",	"79733804335"),
("Reece Guerra",	'1997-11-14',	"350 Sagittis Avenue.",	"Huddersfield",		"HD5 7YT",	"83656897807"),
("Ezekiel Howell", '1990-05-21',	"6 Vitae Road.",	"Halifax",		"HX6 9YT",	"16101352993"),
("Griffith Velez", '1997-11-14',	"5 Eleifend Road.",	"Blackburn",		"BB2 6TR",	"64580974718"),
("Gannon Erickson", '1974-11-11', "8 Ultricies St.",	"Blackburn",		"BB3 2ER",	"55719695891"),
("Fay Ross",	'1971-04-07',	"73 Aliquet, Rd.",	"Huddersfield",		"HD7 6RE",	"37642009564"),
("Guy Kramer",	'1997-11-14',	"5 Suspendisse Av.",	"Huddersfield",		"HD4 5YU",	"62326088283"),
("Sybil Riggs",	'1993-03-23',	"4578 Gravida Rd.",	"Huddersfield",		"HD5 4PO",	"66326701581"),
("Justina Scott", '1991-12-16',	"5 Nunction St.",	"Huddersfield",		"HD5 5OP",	"10082739759"),
("Elvis Bright",	'1997-11-14',	"7 Luctus St.",		"Huddersfield",		"HD8 7UY",	"05188246666"),
("Abdul Noble",	'1992-07-06',	"77 Innes Road",	"Halifax",		"HX3 4EW",	"77737510676"),
("Gil Wynn",	'1997-11-14',	"22 Naff Av.",		"Burnley",		"BB12 8BB",	"11968486217"),
("Willa Cline",	'1990-05-21',	"48 Fusce Avenue",	"Burnley",		"BB12 7KB",	"81763724655"),
("Armando Kelly", '1997-11-14',	"Powe House",		"Mirfield",		"WA1 2BC",	"61740980737"),
("Renee Chan",	'1974-11-11',	"193 Semtex Avenue",	"Blackburn",		"BB4 7PR",	"02379614686"),
("Abbot Schroeder", '1971-04-07', "24 Semper Rd.",       "Burnley",		"BB13 1AB",	"05980093727"),
("Quinn Finch",	'1970-12-31',	"36 Libero Avenue",	"Halifax",		"HX11 3MN",	"75810373071"),
("Seth Acevedo",	'1997-11-14',	"Blobby Road.",		"Mirfield",		"WA12 9YU",	"99577278566"),
("Carl Massey",	'1991-12-16',	"25 Curabitur Rd.",	"Blackburn",		"BB9 2AS",	"02255632144"),
("Hope Jimenez",	'1986-09-10',	"Black Street",		"Halifax",		"HX7 2ER",	"11025714634"),
("Carol Flores",	'1992-07-06',	"69 Burnley Road",	"Blackburn",		"BB5 0TR",	"40088109731"),
("Luke Cunningham", '1997-11-14', "24 Sed Road",         "Halifax",		"HX4 3MG",	"50871943525"),
("Ross Daniel",	'1990-05-21',	"37 Mauris Avenue",	"Blackburn",		"BB5 3GG",	"26507509198"),
("Riley Petersen", '1997-11-14',	"83 Eu Road.",		"Halifax",		"HX1 1AA",	"61712244490"),
("Naida Perkins", '1974-11-11',	"37 Orci Street.",	"Mirfield",		"WA14 9IU",	"27873163184"),
("Leah Merritt",	 '1971-04-07',	"7 Magnis Road.",	"Halifax",		"HX3 2ER",	"37360316252"),
("Stuart Golden", '1970-12-31',	"30 Amet Avenue.",	"Halifax",		"HX3 3TT",	"12597434849"),
("Serina Carver", '1997-11-14',	"P6 Mauris. Street",	"Burnley",		"BB12 9UU",	"51852193289"),
("Sheila Walker", '1991-12-16',	"357 A Street",		"Preston",		"PR5 7YY",	"34939163481"),
("Dustin Decker", '1986-09-10',	"2 Convallis Avenue",	"Blackburn",		"BB1 6II",	"58034931233"),
("Seth Silva",	 '1992-07-06',	"72 Vitae Road.",	"Preston",		"PR2 2VB",	"59036799327"),
("Cairo Cruz",	 '1997-11-14',	"92 Nunc Road.",	"Halifax",		"HX4 6DS",	"77818075266"),
("Geraldine Hoffman", '1990-05-21', "38 Eros Avenue",    "Huddersfield",		"HD7 8DS",	"13544936091"),
("Stewart Hines", '1997-11-14',	"63 Et Road.",		"Halifax",		"HX6 7UU",	"41021631249"),
("Linus Alvarez", '1974-11-11',	"69 Lobortis St.",	"Halifax",		"HX7 8HH",	"57005852415"),
("Lee Farrell",	 '1971-04-07',	"60 Nisl. St.",		"Preston",		"PR1 5RT",	"27704495301"),
("Finn Ferrell",	 '1970-12-31',	"83 Felis. Rd.",	"Halifax",		"HX6 6TR",	"87274865380"),
("Brooke Conrad", '1997-11-14',	"8 Luctus St.",		"Huddersfield",		"HD3 8UY",	"10234775961"),
("Nichole Zamora", '1991-12-16',	"583 Eu Avenue.",	"Huddersfield",		"HD4 7WY",	"32675363882"),
("Lesley Lucas",	 '1986-09-10',	"928-5238 Luctus St.",	"Huddersfield",		"HD5 6XY",	"61986811231"),
("Rudyard Phelps", '1992-07-06',	"214 Turpis. Street",	"Huddersfield",		"HD675YY",	"81772176528");


INSERT INTO Payment(patid, staffid, amount, payDate) values
(1, 1, 9.60, '2017-01-08'),
(5, 10, 8.60, '2017-05-12'),
(8, 31, 20.40, '2017-06-22'),
(33, 15, 8.40, '2017-07-01'),
(25, 20, 29.80, '2017-03-22');

INSERT INTO Dispensal(patid, staffid, pharmid, drugid, packs, price, payid, dispDate) values
(1, 1, 1, 1, 4, 0.50, 1, '2017-01-08'),
(1, 1, 1, 2, 1, 8.60, 1, '2017-01-08'),
(5, 10, 1, 6, 1, 8.60, 2, '2017-05-12'),
(50, 8, 1, 15, 2, 7.00, 3, '2017-06-22'),
(50, 8, 1, 26, 1, 3.20, 3, '2017-06-22'),
(33, 15, 1, 14, 3, 8.40, 4, '2017-07-01'),
(25, 20, 1, 1, 2, 0.50, 5, '2017-03-22'),
(25, 20, 1, 6, 1, 8.60, 5, '2017-03-22'),
(25, 20, 1, 15, 1, 3.50, 5, '2017-03-22'),
(25, 20, 1, 19, 1, 8.60, 5, '2017-03-22');

