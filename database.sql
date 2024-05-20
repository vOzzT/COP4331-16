create database COP4331;
use COP4331;

CREATE TABLE `COP4331`.`Users` ( 
  `ID` INT NOT NULL AUTO_INCREMENT , 
  `DateCreated` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP , 
  `DateLastLoggedIn` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP , 
  `FirstName` VARCHAR(50) NOT NULL DEFAULT '' , 
  `LastName` VARCHAR(50) NOT NULL DEFAULT '' , 
  `Login` VARCHAR(50) NOT NULL DEFAULT '' , 
  `Password` VARCHAR(50) NOT NULL DEFAULT '' , 
  PRIMARY KEY (`ID`)
) ENGINE = InnoDB;

CREATE TABLE `COP4331`.`Contacts` (
  `ID` INT NOT NULL AUTO_INCREMENT ,
  `FirstName` VARCHAR(50) NOT NULL DEFAULT '' , 
  `LastName` VARCHAR(50) NOT NULL DEFAULT '' , 
  `Phone` VARCHAR(50) NOT NULL DEFAULT '' ,
  `Email` VARCHAR(50) NOT NULL DEFAULT '' ,
  `UserID` INT NOT NULL DEFAULT '0' ,
  PRIMARY KEY (`ID`)
) ENGINE = InnoDB;

USE COP4331;

/*
insert into Users (FirstName,LastName,Login,Password) VALUES 
('Rick','Leinecker','RickL','COP4331');

insert into Users (FirstName,LastName,Login,Password) VALUES 
('Test','Dummy','tester','password');

insert into Users (FirstName,LastName,Login,Password) VALUES
('Rick','Leinecker','RickL','5832a71366768098cceb7095efb774f2');

insert into Users (FirstName,LastName,Login,Password) VALUES
('Test','Dummy','tester','0cbc6611f5540bd0809a388dc95a615b');


insert into Contacts (FirstName,LastName, Phone, Email, UserID) VALUES
('Oscar', 'Rodriguez', '321-456-7890', 'os12345@ucf.edu', '1');

insert into Contacts (FirstName,LastName, Phone, Email, UserID) VALUES
('Kensley', 'Cadet', '407-420-4545', 'ke54321@ucf.edu', '1');

insert into Contacts (FirstName,LastName, Phone, Email, UserID) VALUES
('Simeon', 'Feliz', '305-789-0123', 'si78901@ucf.edu', '1');

insert into Contacts (FirstName,LastName, Phone, Email, UserID) VALUES
('Max', 'Whitaker', '654-982-4321', 'ma34598@ucf.edu', '1');

insert into Contacts (FirstName,LastName, Phone, Email, UserID) VALUES
('Ify', 'Okafor', '954-123-7575', 'if43871@ucf.edu', '1');


insert into Contacts (FirstName,LastName, Phone, Email, UserID) VALUES
('Oscar', 'Rodriguez', '321-456-7890', 'os12345@ucf.edu', '3');

insert into Contacts (FirstName,LastName, Phone, Email, UserID) VALUES
('Kensley', 'Cadet', '407-420-4545', 'ke54321@ucf.edu', '3');

insert into Contacts (FirstName,LastName, Phone, Email, UserID) VALUES
('Simeon', 'Feliz', '305-789-0123', 'si78901@ucf.edu', '3');

insert into Contacts (FirstName,LastName, Phone, Email, UserID) VALUES
('Max', 'Whitaker', '654-982-4321', 'ma34598@ucf.edu', '3');

insert into Contacts (FirstName,LastName, Phone, Email, UserID) VALUES
('Ify', 'Okafor', '954-123-7575', 'if43871@ucf.edu', '3');
*/