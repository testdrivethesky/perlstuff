DROP DATABASE IF EXISTS school;

CREATE DATABASE school;

USE school;


CREATE TABLE student (
      StudentID INT NOT NULL,
      FirstName VARCHAR(40),
      LastName VARCHAR(40),
      Email VARCHAR(40),
      CellPhone VARCHAR(20),
      Major VARCHAR(30),
      GPA  VARCHAR(30),
      "Start Date" DATE,
    PRIMARY KEY (StudentID)
);

INSERT INTO student (StudentID, FirstName, LastName, Email, CellPhone, Major, GPA, "Start Date")
VALUES ('1', 'Serena','Smythe','ssmythe@school.edu','848-581-7878','Biology','3.7', '2015-01-02');

INSERT INTO student (StudentID, FirstName, LastName, Email, CellPhone, Major, GPA, "Start Date")
VALUES ('2', 'Kyle','Miller','kmiller@school.edu','247-321-2015','Drama','3.2', '2011-02-04');

INSERT INTO student (StudentID, FirstName, LastName, Email, CellPhone, Major, GPA, "Start Date")
VALUES ('3', 'Pat','Samson','psamson@school.edu','848-625-7777','English','3.1', '2012-12-11');