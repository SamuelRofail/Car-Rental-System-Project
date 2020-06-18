DROP TABLE IF EXISTS ReantedCars
DROP TABLE IF EXISTS Client 
DROP TABLE IF EXISTS Cars 
DROP TABLE IF EXISTS Brand 



CREATE TABLE Brand (
	BrandID int PRIMARY KEY IDENTITY,
	carbrand varchar(50) UNIQUE NOT NULL
);
INSERT INTO Brand VALUES ('BMW'),('Toyota'),('Ford'),('Chevrolet'),('Geely'),('Fiat'),('Hyundai'),('Kia'),('Mercedes-Benz'),
						 ('Mitsubishi'),('Nissan'),('Volkswagen'),('Renault');
CREATE TABLE Cars(
	CarID int PRIMARY KEY IDENTITY ,
	PlateNUM nvarchar(50) UNIQUE NOT NULL,
	Carmodel varchar(50) NOT NULL,
	CarBrandID int  REFERENCES Brand(BrandID),
	CarPrice int not null,
	Is_Rented BIT  not null ,
);
INSERT INTO Cars VALUES ('5466843' , '2016' , 1 , 4000 , 1);
INSERT INTO Cars VALUES ('5466553' , '2016' , 1 , 2000 , 1);


CREATE TABLE Client (
	ClientID int PRIMARY KEY IDENTITY(1,1),
	Name Varchar(50) NOT NULL ,
	Phone VARCHAR(20) NOT NULL UNIQUE,
	Email VARCHAR(50) NOT NULL UNIQUE,
	Address VARCHAR(150) NOT NULL
);
INSERT INTO Client VALUES ('Marsel Nader'	,'01241264494',	'maged445@yahoo.com'	'alexandria, egypt');
INSERT INTO Client VALUES ('mariam youssef'	,'01154934822'	,'mariam_y.sloiman@gmail.com','Alexndria,egypt');
INSERT INTO Client VALUES ('Samuel tarek'	,'01255981324'	,'samuel.tarek@gmail.com'	,'alexandria,egypt');
INSERT INTO Client VALUES ('Mark Youssef',	'01032486725',	'mark.sameh@gmail.com',	'alexandria,egypt');
INSERT INTO Client VALUES ('moheb magdy'	,'0128864397'	,'moheb.magdy@yahoo.com'	,'alexandria,egypt');


CREATE TABLE ReantedCars(
	CarID INT REFERENCES Cars(CarID),
	ClientID INT REFERENCES Client(ClientID),
);



INSERT INTO Brand VALUES ('Lada')
INSERT INTO Cars VALUES ('4268791' , 'Lancer 2016' , 10 , 2500 , 0);
INSERT INTO Client VALUES ('Ahmed Said Hamed' , '01034679213','ahmed.hamed19@gmail.com','Egypt,Alexandria, victoria')
INSERT INTO Brand VALUES ('DAEWOO')
INSERT INTO Cars VALUES ('4679153' , 'Sportage 2013' , 8 , 3000 , 0);

UPDATE Cars SET  CarPrice = 3500 WHERE CarID = 4;
UPDATE Client SET Name = 'Maged Wagdy' WHERE ClientID = 10;
UPDATE Client SET Phone = '0114686537' WHERE ClientID = 10;
UPDATE Client SET Address= 'Egypt,Alexandria, janklis' WHERE ClientID = 10;
UPDATE Cars SET  CarPrice = 4500 WHERE CarID = 1;

DELETE Brand WHERE BrandID = 14;
DELETE Cars WHERE CarID = 3;
DELETE Client WHERE ClientID = 6;
DELETE Brand WHERE BrandID = 15;
DELETE Cars WHERE CarID = 4;
