--SQL Statements:

use sdev; 

DROP TABLE Faculty;
DROP TABLE Courses;
DROP TABLE FacultyCourses;

--1. Create Table named Faculty

CREATE TABLE Faculty (
FacultyID int primary key,
FirstName varchar(30),
LastName varchar(30),
Email varchar(60),
DateOfBirth date,
NumberOfCourses int
);



--2. Create a Table named Courses

CREATE TABLE Courses (
CourseID int primary key,
CourseDisc varchar(4),
CourseNum varchar(4),
NumberOfCredits int,
YearOffered int,
CourseTitle varchar(75)
);



-- 3. Create a Table named FacultyCourses

CREATE TABLE FacultyCourses (
FacultyCourseID int primary key,
CourseID int references Courses(CourseID),
FacultyID int references Faculty(FacultyID)
);



-- 4. Insert Statements to populate at least 10 faculty records

INSERT into Faculty
VALUES ('1', 'Shawn', 'Delaney', 'sd19surf@gmail.com', '1975-08-19', '0');

INSERT into Faculty
VALUES ('2', 'Geddy', 'Lee', '123Rush@gmail.com', ' 1953-07-29', '20');

INSERT into Faculty
VALUES ('3', 'Alex', 'Lifeson', '456Rush@gmail.com', '1953-08-27', '10');

INSERT into Faculty
VALUES ('4', 'Neil', 'Peart', '789Rush@gmail.com', '1952-09-12', '5');

INSERT into Faculty
VALUES ('5', 'John', 'Rutsey', '404Rush@gmail.com', '1952-07-23', '1');

INSERT into Faculty
VALUES ('6', 'Rick', 'Moranis', '411ElemSchool@rush.com', '1953-04-18', '4');

INSERT into Faculty
VALUES ('7', 'Bob', 'Plant', '123LedZepplin@gmail.com', '1948-08-20', '20');

INSERT into Faculty
VALUES ('8', 'Jimmy', 'Page', '345LedZepplin@gmail.com', '1944-01-09', '30');

INSERT into Faculty
VALUES ('9', 'John', 'Bonham', '678LedZepplin@gmail.com', '1948-05-31', '22');

INSERT into Faculty
VALUES ('10', 'John Paul', 'Jones', '987LedZepplin@gmail.com', '1946-01-03', '43');

-- Courses

INSERT into Courses
VALUES ('1', 'SDEV', '300', '3', '2014', 'Building Secure Web Applications');

INSERT into Courses
VALUES ('2', 'CMSC', '495', '3', '2017', 'Trends in Computer Science');

INSERT into Courses
VALUES ('3', 'MATH', '301', '3', '2017', 'Real Concepts of Analysis');

INSERT into Courses
VALUES ('4', 'CMSC', '303', '3', '2015', 'Merge Sort Can be Fun');

INSERT into Courses
VALUES ('5', 'SHED', '101', '3', '2016', 'Fun with Flags');

-- Faculty Records

INSERT into FacultyCourses
VALUES ('1', '1', '1');

INSERT into FacultyCourses
VALUES ('2', '2', '1');

INSERT into FacultyCourses
VALUES ('3', '3', '1');

INSERT into FacultyCourses
VALUES ('4', '1', '2');

INSERT into FacultyCourses
VALUES ('5', '1', '3');

INSERT into FacultyCourses
VALUES ('6', '1', '4');

INSERT into FacultyCourses
VALUES ('7', '3', '5');

INSERT into FacultyCourses
VALUES ('8', '5', '10');

INSERT into FacultyCourses
VALUES ('9', '4', '10');

INSERT into FacultyCourses
VALUES ('10', '3', '6');

INSERT into FacultyCourses
VALUES ('11', '2', '7');

INSERT into FacultyCourses
VALUES ('12', '4', '8');

INSERT into FacultyCourses
VALUES ('13', '1', '9');

INSERT into FacultyCourses
VALUES ('14', '2', '9');

INSERT into FacultyCourses
VALUES ('15', '4', '6');

INSERT into FacultyCourses
VALUES ('16', '4', '3');

INSERT into FacultyCourses
VALUES ('17', '3', '10');

INSERT into FacultyCourses
VALUES ('18', '5', '2');

INSERT into FacultyCourses
VALUES ('19', '4', '7');

INSERT into FacultyCourses
VALUES ('20', '3', '5');

INSERT into FacultyCourses
VALUES ('21', '1', '2');

INSERT into FacultyCourses
VALUES ('22', '4', '3');

INSERT into FacultyCourses
VALUES ('23', '5', '6');

INSERT into FacultyCourses
VALUES ('24', '3', '9');

INSERT into FacultyCourses
VALUES ('25', '1', '1');


--Update the Courses Table from 3 to 4

UPDATE Courses SET NumberOfCredits = 4 WHERE CourseID IS NOT NULL;

--Update the Faculty Courses Count to anything equal or greater than 4 to 5

UPDATE Faculty SET NumberOfCourses = 5 WHERE NumberOfCourses > 4;
