



-- -----------------------------------------------------
-- Table  clients
-- -----------------------------------------------------
CREATE TABLE Clients 
(
  ID INT    NOT NULL IDENTITY,
  LAST_NAME VARCHAR(1024) NOT NULL,
  FIRST_NAME VARCHAR(1024) NOT NULL,
  PHONE VARCHAR(15)   NOT NULL,
  PRIMARY KEY (ID)
);


-- -----------------------------------------------------
-- Table  users
-- -----------------------------------------------------
CREATE TABLE Users
(
  ID INT    NOT NULL IDENTITY,
  LAST_NAME VARCHAR(1024) NOT NULL,
  FIRST_NAME VARCHAR(1024) NOT NULL,
  PHONE VARCHAR(15)    NOT NULL,
  EMAIL VARCHAR(1024) UNIQUE NOT NULL,
  PASSWORD VARCHAR(1024) NOT NULL,
  PROFIL INT    NOT NULL,
  PRIMARY KEY (ID)
);



-- -----------------------------------------------------
-- Table  taxis 
-- -----------------------------------------------------
CREATE TABLE  Taxis 
(
  ID INT    NOT NULL IDENTITY,
  MATRICULE VARCHAR(1024) NOT NULL,
  TYPE VARCHAR(1024) NOT NULL,
  driver_ID INT    NOT NULL UNIQUE FOREIGN KEY REFERENCES users(ID),
  PRIMARY KEY (ID)
);



-- -----------------------------------------------------
-- Table  periodic_courses 
-- -----------------------------------------------------
CREATE TABLE Periodic_Courses 
(
  ID INT    NOT NULL IDENTITY,
  DAY INT    NOT NULL,
  STARTING_TIME TIME NOT NULL,
  STARTING_ADDRESS TEXT NOT NULL,
  ARRIVAL_ADDRESS TEXT NOT NULL,
  LIMIT_DATE DATE NULL,
  client_ID INT    NOT NULL references clients(ID),
  PRIMARY KEY (ID)
);



-- -----------------------------------------------------
-- Table courses
-- -----------------------------------------------------
CREATE TABLE Courses 
(
  ID INT    NOT NULL IDENTITY,
  STARTING_DAY DATE NOT NULL,
  STARTING_TIME TIME NOT NULL,
  STARTING_ADDRESS TEXT NOT NULL,
  ARRIVAL_ADDRESS TEXT NOT NULL,
  ARRIVAL_TIME DATETIME NULL,
  client_ID INT    NOT NULL references clients(ID),
  taxi_ID INT    NULL references taxis(ID) ,
  --periodic_course_ID INT    NULL references periodic_courses(ID) ,
  PRIMARY KEY (ID)
);


CREATE TABLE AffectedDay
(
	ID INT    NOT NULL IDENTITY,
	AFFECTED DATE NOT NULL,
	PRIMARY KEY (ID)
);