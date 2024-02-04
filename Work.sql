select * from orders;
select * from orderdetails;
select * from products;
select * from products where productCode = 'S18_4409';


select  * from orderdetails left join orders on orderdetails.orderNumber = orders.orderNumber;

-- select products and quantity ordered from the highest to the lowest
select sum(orderdetails.quantityOrdered) as quantity, orderdetails.productCode, products.productName from orderdetails join products 
on orderdetails.productCode = products.productCode
  group by productCode,products.productName order by quantity desc;

select * from customers where customerNumber = 103;
select * from payments;
-- show customer's names who did the payments after 2005
-- need to join ? customers and payments
-- on which column we will join? on customer number column
-- format of the dates 'yyyy-mm-dd'
select c.customerName, p.paymentDate from customers c join payments p on c.customerNumber = p.customerNumber
where p.paymentDate >= '2005-01-01' ;


create database lesson3;
drop database lesson3;
create schema lesson3;
use lesson3;

create table test (
    firstname integer(64)
);

select * from test;
insert into test (firstname) values ('ilia');

drop table test;
CREATE TABLE Persons (
	PersonID int,
	LastName varchar(255),
	FirstName varchar(255),
	Address varchar(255),
	City varchar(255)
);


CREATE TABLE Actors (
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    favorite_movie VARCHAR(100)
);


INSERT INTO Actors (first_name, last_name, age, favorite_movie)
VALUES 
    ('Meryl', 'Streep', 72, 'The Devil Wears Prada'),
    ('Chadwick', 'Boseman', 43, 'Black Panther'),
    ('Emma', 'Watson', 32, 'Harry Potter and the Philosopher''s Stone'),
    ('Chris', 'Hemsworth', 38, 'Thor');


INSERT INTO Actors 
VALUES 
    ('Bruce', 'Willis');
    
    
select * from actors;     
    
delete from    Actors where age is null; 

update actors set gender = 'm' where last_name in ('Boseman', 'Hemsworth', 'Hanks', 'Willis');
update actors set gender = 'f' where gender is null;
   
ALTER TABLE actors ADD gender varchar(1);

alter table actors drop gender;

truncate table actors;
drop table actors;
    
drop table persons;
CREATE TABLE Persons (
	ID int NOT NULL,
    LastName varchar(255) NOT NULL,
	FirstName varchar(255) NOT NULL,
	Age int
);

INSERT INTO Persons (ID, LastName, FirstName, Age)
VALUES 
    (2, 'Bruce', null, 75);
    
    select * from Persons;
 
ALTER TABLE Persons
ADD CONSTRAINT pk1 primary key (id);

INSERT INTO Persons (ID, LastName, FirstName, Age)
VALUES 
    (1, 'Bruce', 'Willis', 75);  -- doesnt works
    
    
CREATE TABLE courses (
  course_id INT PRIMARY KEY  ,
  course_name VARCHAR(50) NOT NULL,
  instructor_name VARCHAR(50) NOT NULL,
  course_description TEXT NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL  
);
    
INSERT INTO courses (course_id ,course_name, instructor_name, course_description, start_date, end_date)
VALUES 
(1, 'Intro to Python', 'John Smith', 'Learn the basics of Python programming', '2023-05-01', '2023-06-01'),
(2, 'Web Development', 'Sarah Johnson', 'Learn how to build dynamic websites with HTML, CSS, and JavaScript', '2023-06-15', '2023-08-15'),
(3, 'Data Analysis with R', 'David Lee', 'Analyze and visualize data using the R programming language', '2023-07-01', '2023-08-01');
    
    
select * from courses;

drop table students;
drop table courses;


CREATE TABLE students (
  student_id INT NOT NULL,
  student_name VARCHAR(50) NOT NULL,
  course_id INT NOT NULL,
  PRIMARY KEY (student_id),
  FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

select * from students;

INSERT INTO students (student_id, student_name, course_id)
VALUES 
  (1, 'Jane Doe', 1),  (2, 'John Smith', 2),  (3, 'Sarah Johnson', 3),  (4, 'David Lee', 1),
  (5, 'Emily Brown', 2),  (6, 'Michael Chen', 3),  (7, 'Julia Kim', 1),  (8, 'Alex Wong', 2),
  (9, 'Elena Rodriguez', 3),  (10, 'Chris Patel', 1);

INSERT INTO students (student_id, student_name, course_id)
VALUES 
  (11, 'Arja Stark', 4);


delete from courses where course_id = 2;
delete from students where course_id = 1;
select * from students;
select * from courses;

update students set course_id = 2 where student_id =8;

update students set course_id = 3 where course_id = 2;




delete from courses where course_id = 2;

-- Select all students who will learn python + course description (using join table)
select students.*, courses.course_description from students join courses on students.course_id = courses.course_id
where students.course_id = 1;

INSERT INTO students (student_id, student_name, course_id)
VALUES 
  (20, 'Arja Stark', null);





