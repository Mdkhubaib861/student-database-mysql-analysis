-- CREATE DATABASE StudentDB;
USE StudentDB;
/*
CREATE TABLE personal_info (
    sid INT PRIMARY KEY,
    name VARCHAR(100),
    gender ENUM('Male', 'Female'),
    dob DATE,
    city VARCHAR(50)
);

CREATE TABLE academic_info (
    roll_no INT,
    sid INT,
    class VARCHAR(50),
    total_marks INT,
    FOREIGN KEY (sid) REFERENCES personal_info(sid)
);

-- SELECT * FROM personal_info;
-- SELECT * FROM academic_info;

INSERT INTO personal_info (sid, name, gender, dob, city) VALUES
(1, 'Aarav Sharma', 'Male', '2005-04-12', 'Malegaon'),
(2, 'Ananya Verma', 'Female', '2006-02-15', 'Mumbai'),
(3, 'Rohan Gupta', 'Male', '2005-07-22', 'Pune'),
(4, 'Priya Patel', 'Female', '2006-09-10', 'Nashik'),
(5, 'Kabir Khan', 'Male', '2005-01-05', 'Malegaon'),
(6, 'Neha Singh', 'Female', '2006-11-30', 'Mumbai'),
(7, 'Amit Deshmukh', 'Male', '2005-05-18', 'Pune'),
(8, 'Sneha Joshi', 'Female', '2006-03-25', 'Nashik'),
(9, 'Rahul Patil', 'Male', '2005-08-14', 'Malegaon'),
(10, 'Pooja Kulkarni', 'Female', '2006-06-19', 'Mumbai'),
(11, 'Vikram Malhotra', 'Male', '2005-10-02', 'Pune'),
(12, 'Kavita Rao', 'Female', '2006-12-05', 'Nashik'),
(13, 'Siddharth Mehta', 'Male', '2005-03-17', 'Malegaon'),
(14, 'Divya Nair', 'Female', '2006-07-21', 'Mumbai'),
(15, 'Manish Tiwari', 'Male', '2005-06-09', 'Pune'),
(16, 'Swati Kadam', 'Female', '2006-01-14', 'Nashik'),
(17, 'Karan Kapoor', 'Male', '2005-09-28', 'Malegaon'),
(18, 'Megha Sen', 'Female', '2006-04-03', 'Mumbai'),
(19, 'Aditya Shinde', 'Male', '2005-12-11', 'Pune'),
(20, 'Tanvi More', 'Female', '2006-08-27', 'Nashik'),
(21, 'Yash Chavan', 'Male', '2005-02-19', 'Malegaon'),
(22, 'Ritu Jadhav', 'Female', '2006-10-16', 'Mumbai'),
(23, 'Sandeep Pawar', 'Male', '2005-07-04', 'Pune'),
(24, 'Nisha Wagh', 'Female', '2006-05-22', 'Nashik'),
(25, 'Arjun Kale', 'Male', '2005-11-08', 'Malegaon'),
(26, 'Kiran Thorat', 'Female', '2006-03-12', 'Mumbai'),
(27, 'Deepak Gaikwad', 'Male', '2005-01-25', 'Pune'),
(28, 'Sunita Salunkhe', 'Female', '2006-09-01', 'Nashik'),
(29, 'Vikas Sonawane', 'Male', '2005-04-30', 'Malegaon'),
(30, 'Rekha Bhoye', 'Female', '2006-06-14', 'Mumbai'),
(31, 'Sameer Shaikh', 'Male', '2005-08-19', 'Pune'),
(32, 'Ayesha Khan', 'Female', '2006-12-20', 'Nashik'),
(33, 'Imran Sayed', 'Male', '2005-03-08', 'Malegaon'),
(34, 'Zoya Ansari', 'Female', '2006-07-11', 'Mumbai'),
(35, 'Faizan Qureshi', 'Male', '2005-10-24', 'Pune'),
(36, 'Sana Pathak', 'Female', '2006-02-09', 'Nashik'),
(37, 'Akash Kulkarni', 'Male', '2005-05-13', 'Malegaon'),
(38, 'Rachana Deshmukh', 'Female', '2006-11-18', 'Mumbai'),
(39, 'Sajid Momin', 'Male', '2005-01-17', 'Pune'),
(40, 'Farheen Malek', 'Female', '2006-04-22', 'Nashik'),
(41, 'Nikhil Kulkarni', 'Male', '2005-09-05', 'Malegaon'),
(42, 'Shruti Joshi', 'Female', '2006-08-15', 'Mumbai'),
(43, 'Gaurav Shinde', 'Male', '2005-06-25', 'Pune'),
(44, 'Pallavi Patil', 'Male', '2006-10-30', 'Nashik'),
(45, 'Harshvardhan Rao', 'Male', '2005-02-14', 'Malegaon'),
(46, 'Trupti Jadhav', 'Female', '2006-07-07', 'Mumbai'),
(47, 'Mayur Pawar', 'Male', '2005-11-19', 'Pune'),
(48, 'Madhuri Wagh', 'Female', '2006-03-04', 'Nashik'),
(49, 'Sachin Kale', 'Male', '2005-04-08', 'Malegaon'),
(50, 'Pragati Thorat', 'Female', '2006-12-12', 'Mumbai');

INSERT INTO academic_info (roll_no, sid, class, total_marks) VALUES
(101, 1, 'Final', 420),
(102, 2, 'Final', 380),
(103, 3, 'Second', 450),
(104, 4, 'First', 310),
(105, 5, 'Final', 410),
(106, 6, 'Second', 390),
(107, 7, 'Final', 460),
(108, 8, 'First', 340),
(109, 9, 'Final', 430),
(110, 10, 'Second', 370),
(111, 11, 'Final', 405),
(112, 12, 'First', 320),
(113, 13, 'Final', 445),
(114, 14, 'Second', 360),
(115, 15, 'Final', 475),
(116, 16, 'First', 330),
(117, 17, 'Final', 415),
(118, 18, 'Second', 385),
(119, 19, 'Final', 455),
(120, 20, 'First', 350),
(121, 21, 'Final', 395),
(122, 22, 'Second', 400),
(123, 23, 'Final', 480),
(124, 24, 'First', 305),
(125, 25, 'Final', 425),
(126, 26, 'Second', 375),
(127, 27, 'Final', 440),
(128, 28, 'First', 315),
(129, 29, 'Final', 435),
(130, 30, 'Second', 365),
(131, 31, 'Final', 410),
(132, 32, 'First', 325),
(133, 33, 'Final', 465),
(134, 34, 'Second', 390),
(135, 35, 'Final', 400),
(136, 36, 'First', 335),
(137, 37, 'Final', 450),
(138, 38, 'Second', 355),
(139, 39, 'Final', 470),
(140, 40, 'First', 345),
(141, 41, 'Final', 405),
(142, 42, 'Second', 380),
(143, 43, 'Final', 420),
(144, 44, 'First', 300),
(145, 45, 'Final', 430),
(146, 46, 'Second', 370),
(147, 47, 'Final', 455),
(148, 48, 'First', 310),
(149, 49, 'Final', 415),
(150, 50, 'Second', 395);

INSERT INTO personal_info (sid, name, gender, dob, city) VALUES
(51, 'Tanmay Kulkarni', 'Male', '2005-03-14', 'Malegaon'),
(52, 'Rrutuja Deshmukh', 'Female', '2006-05-19', 'Mumbai'),
(53, 'Harshad Patil', 'Male', '2005-08-22', 'Pune'),
(54, 'Bhakti More', 'Female', '2006-01-11', 'Nashik'),
(55, 'Prasad Shinde', 'Male', '2005-11-03', 'Malegaon'),
(56, 'Mitali Joshi', 'Female', '2006-07-28', 'Mumbai'),
(57, 'Sanket Kale', 'Male', '2005-02-09', 'Pune'),
(58, 'Tejal Pawar', 'Female', '2006-09-14', 'Nashik'),
(59, 'Akshay Wagh', 'Male', '2005-06-17', 'Malegaon'),
(60, 'Vaishnavi Thorat', 'Female', '2006-12-02', 'Mumbai'),
(61, 'Chetan Gaikwad', 'Male', '2005-04-25', 'Pune'),
(62, 'Priyanka Salunkhe', 'Female', '2006-10-08', 'Nashik'),
(63, 'Yogesh Sonawane', 'Male', '2005-01-12', 'Malegaon'),
(64, 'Komal Bhoye', 'Female', '2006-03-30', 'Mumbai'),
(65, 'Sohail Shaikh', 'Male', '2005-07-05', 'Pune'),
(66, 'Bushra Khan', 'Female', '2006-08-19', 'Nashik'),
(67, 'Arbaaz Sayed', 'Male', '2005-09-21', 'Malegaon'),
(68, 'Almas Ansari', 'Female', '2006-04-16', 'Mumbai'),
(69, 'Danish Qureshi', 'Male', '2005-12-14', 'Pune'),
(70, 'Uzma Pathak', 'Female', '2006-02-27', 'Nashik'),
(71, 'Swapnil Kulkarni', 'Male', '2005-05-01', 'Malegaon'),
(72, 'Pooja Deshmukh', 'Female', '2006-11-20', 'Mumbai'),
(73, 'Bhushan Momin', 'Male', '2005-03-19', 'Pune'),
(74, 'Heena Malek', 'Female', '2006-06-07', 'Nashik'),
(75, 'Rohit Kulkarni', 'Male', '2005-10-15', 'Malegaon'),
(76, 'Shital Joshi', 'Female', '2006-01-04', 'Mumbai'),
(77, 'Omkar Shinde', 'Male', '2005-08-09', 'Pune'),
(78, 'Geeta Patil', 'Female', '2006-05-12', 'Nashik'),
(79, 'Siddhesh Rao', 'Male', '2005-02-23', 'Malegaon'),
(80, 'Priti Jadhav', 'Female', '2006-09-30', 'Mumbai'),
(81, 'Suraj Pawar', 'Male', '2005-07-18', 'Pune'),
(82, 'Varsha Wagh', 'Female', '2006-12-25', 'Nashik'),
(83, 'Kunal Kale', 'Male', '2005-04-10', 'Malegaon'),
(84, 'Monali Thorat', 'Female', '2006-03-15', 'Mumbai'),
(85, 'Rushikesh Gaikwad', 'Male', '2005-11-29', 'Pune'),
(86, 'Madhura Salunkhe', 'Female', '2006-06-21', 'Nashik'),
(87, 'Pratik Sonawane', 'Male', '2005-01-08', 'Malegaon'),
(88, 'Aishwarya Bhoye', 'Female', '2006-08-02', 'Mumbai'),
(89, 'Akash Shaikh', 'Male', '2005-09-17', 'Pune'),
(90, 'Shabana Khan', 'Female', '2006-04-05', 'Nashik'),
(91, 'Taufiq Sayed', 'Male', '2005-05-28', 'Malegaon'),
(92, 'Naziya Ansari', 'Female', '2006-10-19', 'Mumbai'),
(93, 'Sameer Qureshi', 'Male', '2005-02-14', 'Pune'),
(94, 'Farah Pathak', 'Female', '2006-07-11', 'Nashik'),
(95, 'Kishor Kulkarni', 'Male', '2005-12-05', 'Malegaon'),
(96, 'Deepali Deshmukh', 'Female', '2006-03-22', 'Mumbai'),
(97, 'Nitin Momin', 'Male', '2005-06-13', 'Pune'),
(98, 'Ruksana Malek', 'Female', '2006-11-09', 'Nashik'),
(99, 'Vishal Shinde', 'Male', '2005-01-27', 'Malegaon'),
(100, 'Snehal Patil', 'Female', '2006-08-31', 'Mumbai');

INSERT INTO academic_info (roll_no, sid, class, total_marks) VALUES
(151, 51, 'Final', 412),
(152, 52, 'Second', 388),
(153, 53, 'First', 320),
(154, 54, 'Final', 435),
(155, 55, 'Second', 365),
(156, 56, 'First', 305),
(157, 57, 'Final', 478),
(158, 58, 'Second', 392),
(159, 59, 'First', 340),
(160, 60, 'Final', 445),
(161, 61, 'Second', 375),
(162, 62, 'First', 315),
(163, 63, 'Final', 422),
(164, 64, 'Second', 358),
(165, 65, 'First', 330),
(166, 66, 'Final', 460),
(167, 67, 'Second', 382),
(168, 68, 'First', 325),
(169, 69, 'Final', 415),
(170, 70, 'Second', 370),
(171, 71, 'First', 310),
(172, 72, 'Final', 485),
(173, 73, 'Second', 398),
(174, 74, 'First', 342),
(175, 75, 'Final', 430),
(176, 76, 'Second', 360),
(177, 77, 'First', 300),
(178, 78, 'Final', 440),
(179, 79, 'Second', 385),
(180, 80, 'First', 335),
(181, 81, 'Final', 405),
(182, 82, 'Second', 372),
(183, 83, 'First', 318),
(184, 84, 'Final', 450),
(185, 85, 'Second', 380),
(186, 86, 'First', 328),
(187, 87, 'Final', 425),
(188, 88, 'Second', 368),
(189, 89, 'First', 312),
(190, 90, 'Final', 470),
(191, 91, 'Second', 390),
(192, 92, 'First', 345),
(193, 93, 'Final', 438),
(194, 94, 'Second', 378),
(195, 95, 'First', 322),
(196, 96, 'Final', 455),
(197, 97, 'Second', 387),
(198, 98, 'First', 332),
(199, 99, 'Final', 418),
(200, 100, 'Second', 395);

-- Part A – Basic Data Retrieval

-- 1. Display all records from the personal_info table.

SELECT * FROM personal_info;

-- 2. Display all records from the academic_info table.

SELECT * FROM academic_info;

-- 3. Display only the student name, gender, and city.

SELECT name, gender, city FROM personal_info;

-- 4. Display the names of students who belong to Malegaon.

SELECT name,city FROM personal_info WHERE city = "Malegaon";

-- 5. Display students born in 2006.

SELECT * FROM personal_info 
WHERE YEAR(dob) = 2006;

-- 6. Display all female students.

SELECT * FROM personal_info
 WHERE gender = "Female";
 
 -- 7. Display students from Mumbai, Pune, and Nashik.
 
 SELECT * FROM personal_info WHERE
 city IN ("Mumbai", "Pune", "Nashik");
 
-- Part B – WHERE Clause
 
 8. Find all male students from Malegaon.
 
 SELECT * FROM personal_info WHERE 
 gender = "Male" AND city = "Malegaon";
 
 -- 9. Find all female students from Mumbai.
 
 SELECT * FROM personal_info WHERE
 gender = "Female" AND city = "Mumbai";

-- 10. Find students born between 2005 and 2006.

 SELECT * FROM personal_info WHERE
 YEAR(dob) BETWEEN 2005 AND 2006;
 
 -- 11. Find students whose total marks are greater than 400. 
 
 SELECT * FROM academic_info
 WHERE total_marks > 400;
 
 -- 12. Find students whose total marks are between 350 and 450.
 
SELECT * FROM academic_info WHERE 
total_marks BETWEEN 350 AND 450;

-- 13. Find students belonging to the Final class with marks greater than 400.

SELECT * FROM academic_info WHERE
 class = "Final" AND total_marks > 400;

 -- 14. Find female students from Mumbai who scored more than 400 marks.
 
SELECT p.*, a.total_marks 
FROM personal_info p
JOIN academic_info a ON p.sid = a.sid
WHERE p.gender = "Female" AND p.city = "Mumbai" AND a.total_marks > 400;

-- Part C – Aggregate Functions

-- 15. Find the total number of students.
SELECT count(*) AS TOTAL_STUDENT
 FROM personal_info;
 
--  16.  Find the total number of male and female students.

SELECT gender, COUNT(*) AS count 
FROM personal_info 
GROUP BY gender;

-- 17. Find the average marks of all students.
SELECT AVG(Total_marks) AS AVRAGE_MARKS
FROM academic_info

-- 18. Find the highest marks obtained by any student.
SELECT MAX(total_marks) AS highest_marks FROM academic_info;

-- 19. Find the lowest marks obtained by any student.

SELECT MIN(total_marks) AS lowest_marks FROM academic_info;

-- 20. Find the total marks obtained by all students.
SELECT SUM(total_marks) AS sum_total_marks FROM academic_info;

-- 21. Find the average marks of male students.
SELECT AVG(a.total_marks) AS avg_male_marks 
FROM academic_info a
JOIN personal_info p ON a.sid = p.sid
WHERE p.gender = "Male";

-- 22. Find the average marks of female students.
SELECT AVG(a.total_marks) AS avg_female_marks 
FROM academic_info a
JOIN personal_info p ON a.sid = p.sid
WHERE p.gender = "Female";

-- 23. Count the number of students in each city.
SELECT city, COUNT(*) AS student_count 
FROM personal_info 
GROUP BY city;

-- 24. Count the number of male and female students.
SELECT gender, COUNT(*) AS student_count 
FROM personal_info 
GROUP BY gender;

-- 25. Count students according to their year of birth.
SELECT YEAR(dob) AS birth_year, COUNT(*) AS student_count 
FROM personal_info 
GROUP BY YEAR(dob);

-- 26. Find the average marks for each class.
SELECT class AS AVRAGE, avg(TOTAL_marks) AS student_count 
FROM academic_info 
GROUP BY class;

-- 27. Find the highest marks in each class.
SELECT class AS maximum, max(TOTAL_marks) AS student_count 
FROM academic_info 
GROUP BY class;

-- 28. Find the lowest marks in each class.
SELECT class AS minimum, MIN(TOTAL_marks) AS student_count 
FROM academic_info 
GROUP BY class;

-- 29. Find the number of students in each class.
SELECT class AS count, count(*) AS student_count 
FROM academic_info 
GROUP BY class;

-- 30. Find the average marks for each city.
SELECT p.city, AVG(a.total_marks) AS avg_marks 
FROM academic_info a
JOIN personal_info p ON a.sid = p.sid
group by city;

-- 31. Display only those cities having more than 10 students.
SELECT city, COUNT(*) AS student_count 
FROM personal_info 
GROUP BY city 
HAVING COUNT(*) > 10;

-- 32. Display classes having an average score greater than 400.
SELECT class, AVG(total_marks) AS avg_marks 
FROM academic_info 
GROUP BY class 
HAVING AVG(total_marks) > 400;

-- 33. Display years of birth having more than 30 students.
SELECT YEAR(dob) AS birth_year, COUNT(*) AS student_count 
FROM personal_info 
GROUP BY YEAR(dob) 
HAVING COUNT(*) > 30;

-- 34. Display cities where the average marks are greater than 400.
SELECT p.city, AVG(a.total_marks) AS avg_marks 
FROM personal_info p 
JOIN academic_info a ON p.sid = a.sid 
GROUP BY p.city 
HAVING AVG(a.total_marks) > 400;

-- 35. Display gender groups having more than 40 students.
SELECT gender, COUNT(*) AS student_count 
FROM personal_info 
GROUP BY gender 
HAVING COUNT(*) > 40;

-- 36. Display student name, gender, city, class, roll number, and total marks.
SELECT p.name, p.gender, p.city, a.class, a.roll_no, a.total_marks 
FROM personal_info p 
JOIN academic_info a ON p.sid = a.sid;

-- 37. Display all female students along with their academic information.
SELECT p.*, a.roll_no, a.class, a.total_marks 
FROM personal_info p 
JOIN academic_info a ON p.sid = a.sid 
WHERE p.gender = "Female";

-- 38. Display students from Malegaon along with their marks.
SELECT p.name, p.city, a.total_marks 
FROM personal_info p 
JOIN academic_info a ON p.sid = a.sid 
WHERE p.city = "Malegaon";

-- 39. Display students who scored more than 400 marks along with their personal details.
SELECT p.*, a.total_marks 
FROM personal_info p 
JOIN academic_info a ON p.sid = a.sid 
WHERE a.total_marks > 400;

-- 40. Display the names and marks of students from Mumbai.
SELECT p.name, a.total_marks 
FROM personal_info p 
JOIN academic_info a ON p.sid = a.sid 
WHERE p.city = "Mumbai";

-- 41. Display student name, city, class, and marks for students from Pune.
SELECT p.name, p.city, a.class, a.total_marks 
FROM personal_info p 
JOIN academic_info a ON p.sid = a.sid 
WHERE p.city = "Pune";

-- 42. Display students whose marks are between 350 and 450 along with their personal information.
SELECT p.*, a.total_marks 
FROM personal_info p 
JOIN academic_info a ON p.sid = a.sid 
WHERE a.total_marks BETWEEN 350 AND 450;

-- 43. Use a LEFT JOIN to display all students from personal_info along with their academic information.
SELECT * FROM personal_info p 
LEFT JOIN academic_info a 
ON p.sid = a.sid;

-- 44. Display all students from the personal information table, even if academic information is not available.
SELECT p.*, a.roll_no, a.class, a.total_marks 
FROM personal_info p 
LEFT JOIN academic_info a 
ON p.sid = a.sid;

-- 45. Find students who do not have matching academic records.
SELECT p.* FROM personal_info p 
LEFT JOIN academic_info a ON p.sid = a.sid 
WHERE a.sid IS NULL;

-- 46. Use a RIGHT JOIN to display all academic records along with the corresponding student information.
SELECT a.*, p.name, p.gender, p.dob, p.city 
FROM personal_info p 
RIGHT JOIN academic_info a 
ON p.sid = a.sid;

-- 47. Find academic records for which matching personal information is not available.
SELECT a.* 
FROM personal_info p 
RIGHT JOIN academic_info a ON p.sid = a.sid 
WHERE p.sid IS NULL;

-- 49. Display student Roll number, total marks, and grade.
SELECT roll_no, total_marks,
CASE
	WHEN total_marks >= 450 THEN "EXECELLNT"
    WHEN total_marks >= 400 THEN "VERY GOOD"
    WHEN total_marks >= 350 THEN "GOOD"
    ELSE "NOT QULIFIED"
END AS REMARK
FROM academic_info;

-- 50. Count how many students belong to each grade.
SELECT 
    CASE
        WHEN total_marks >= 450 THEN 'EXCELLENT'
        WHEN total_marks >= 400 THEN 'VERY GOOD'
        WHEN total_marks >= 350 THEN 'GOOD'
        ELSE 'NOT QUALIFIED'
    END AS REMARK,
    COUNT(*) AS student_count
FROM academic_info
GROUP BY REMARK;

-- 50. Count how many students belong to each grade.
SELECT 
    CASE
        WHEN total_marks >= 450 THEN 'EXCELLENT'
        WHEN total_marks >= 400 THEN 'VERY GOOD'
        WHEN total_marks >= 350 THEN 'GOOD'
        ELSE 'NOT QUALIFIED'
    END AS REMARK,
    COUNT(*) AS student_count
FROM academic_info
GROUP BY REMARK;

-- 51. Find the number of female students in each grade.
SELECT a.class, COUNT(*) AS male_count
FROM personal_info p
JOIN academic_info a ON p.sid = a.sid
WHERE p.gender = "Female"
GROUP BY a.class;


-- 52. Find the number of male students in each grade.
SELECT a.class, COUNT(*) AS male_count
FROM personal_info p
JOIN academic_info a ON p.sid = a.sid
WHERE p.gender = "Male"
GROUP BY a.class;

-- 53. Display students with their grade and city.
SELECT p.name, a.class, p.city
FROM personal_info p
JOIN academic_info a ON p.sid = a.sid;

-- Part J – CASE with Year of Birth

-- 54. Display student name, date of birth, year of birth, and status.
SELECT name, dob, YEAR(dob) AS year_of_birth,
    CASE YEAR(dob)
        WHEN 2005 THEN "Fresh"
        WHEN 2006 THEN "Repeater"
        ELSE "X Repeater"
    END AS status
FROM personal_info;

-- 55. Count students in each status category.
SELECT 
    CASE YEAR(dob)
        WHEN 2005 THEN "Fresh"
        WHEN 2006 THEN "Repeater"
        ELSE "X Repeater"
    END AS status,
    COUNT(*) AS student_count
FROM personal_info
GROUP BY status;

-- 56. Find the number of Fresh, Repeater, and X Repeater students in each city.
SELECT p.city,
    CASE YEAR(p.dob)
        WHEN 2005 THEN 'Fresh'
        WHEN 2006 THEN 'Repeater'
        ELSE 'X Repeater'
    END AS status,
    COUNT(*) AS city_count
FROM personal_info p
JOIN academic_info a ON p.sid = a.sid
GROUP BY p.city, 
    CASE YEAR(p.dob)
        WHEN 2005 THEN 'Fresh'
        WHEN 2006 THEN 'Repeater'
        ELSE 'X Repeater'
    END;

-- 57. Find the average marks of each status category.
SELECT 
    CASE YEAR(p.dob)
        WHEN 2005 THEN "Fresh"
        WHEN 2006 THEN "Repeater"
        ELSE "X Repeater"
    END AS status,
    AVG(a.total_marks) AS average_marks
FROM personal_info p
JOIN academic_info a ON p.sid = a.sid
GROUP BY status;

-- Part K – JOIN + WHERE + CASE
-- 58. Display the names of female students from Mumbai and classify them according to their marks.

SELECT p.name, a.total_marks,
    CASE 
        WHEN a.total_marks >= 450 THEN "Distinction"
        WHEN a.total_marks >= 400 THEN "First Class"
        ELSE "Second Class"
    END AS performance_grade
FROM personal_info p
JOIN academic_info a ON p.sid = a.sid
WHERE p.gender = "Female" AND p.city = "Mumbai";

-- 59. Display male students from Malegaon who scored more than 400 marks and show their performance grade.
SELECT p.name, a.total_marks,
    CASE 
        WHEN a.total_marks >= 450 THEN "Outstanding"
        ELSE "Distinction"
    END AS performance_grade
FROM personal_info p
JOIN academic_info a ON p.sid = a.sid
WHERE p.gender = "Male" AND p.city = "Malegaon" AND a.total_marks > 400;


-- 60. Display Male students from Pune with their class, marks, and performance grade.
SELECT p.name, a.class, a.total_marks,
    CASE 
        WHEN a.total_marks >= 400 THEN "Distinction"
        ELSE "Pass"
    END AS performance_grade
FROM personal_info p
JOIN academic_info a ON p.sid = a.sid
WHERE p.gender = "Male" AND p.city = "Pune";

-- 61. Display students from Nashik with their year-of-birth status and academic grade.
SELECT p.name,
    CASE YEAR(p.dob)
        WHEN 2005 THEN 'Fresh'
        WHEN 2006 THEN 'Repeater'
        ELSE 'X Repeater'
    END AS yob_status,
    CASE 
        WHEN a.total_marks >= 400 THEN "A"
        WHEN a.total_marks >= 350 THEN "B"
        ELSE "C"
    END AS academic_grade
FROM personal_info p
JOIN academic_info a ON p.sid = a.sid
WHERE p.city = "Nashik";

-- 62. Find female students from Mumbai and show the number of students in each performance grade.
SELECT 
    CASE 
        WHEN a.total_marks >= 400 THEN "Distinction"
        WHEN a.total_marks >= 350 THEN "First Class"
        ELSE "Second Class"
    END AS performance_grade,
    COUNT(*) AS student_count
FROM personal_info p
JOIN academic_info a ON p.sid = a.sid
WHERE p.gender = "Female" AND p.city = "Mumbai"
GROUP BY performance_grade;

-- Part L – JOIN + GROUP BY + Aggregation

-- 63. Find the average marks of male and female students.

SELECT p.gender, AVG(a.total_marks) AS avg_marks
FROM personal_info p
JOIN academic_info a ON p.sid = a.sid
GROUP BY p.gender;

-- 64. Find the average marks of students in each city.
SELECT p.city, AVG(a.total_marks) AS avg_marks
FROM personal_info p
JOIN academic_info a ON p.sid = a.sid
GROUP BY p.city;

-- 65. Find the number of students in each city and gender combination.
SELECT p.city, p.gender, COUNT(*) AS student_count
FROM personal_info p
GROUP BY p.city, p.gender
ORDER BY p.city, p.gender;

-- 66. Find the average marks for each class and gender.
SELECT a.class, p.gender, AVG(a.total_marks) AS avg_marks
FROM personal_info p
JOIN academic_info a ON p.sid = a.sid
GROUP BY a.class, p.gender;

-- 67. Find the highest marks obtained by male and female students in each city.
SELECT p.city, p.gender, MAX(a.total_marks) AS max_marks
FROM personal_info p
JOIN academic_info a ON p.sid = a.sid
GROUP BY p.city, p.gender;

-- 68. Find the number of students in each city who scored more than 400 marks.
SELECT p.city, COUNT(*) AS student_count
FROM personal_info p
JOIN academic_info a ON p.sid = a.sid
WHERE a.total_marks > 400
GROUP BY p.city;

-- 69. Find the number of students in each performance grade for every city.
SELECT p.city,
    CASE 
        WHEN a.total_marks >= 400 THEN 'Distinction'
        WHEN a.total_marks >= 350 THEN 'First Class'
        ELSE 'Second Class'
    END AS performance_grade,
    COUNT(*) AS student_count
FROM personal_info p
JOIN academic_info a ON p.sid = a.sid
GROUP BY p.city, performance_grade
ORDER BY p.city, performance_grade;

-- Part M – Advanced Combined Queries
-- 70. Find the number of female students from Mumbai in each performance grade.
SELECT 
    CASE 
        WHEN a.total_marks >= 450 THEN "A"
        WHEN a.total_marks >= 400 THEN "B"
        ELSE "C"
    END AS performance_grade,
    COUNT(*) AS student_count
FROM personal_info p
JOIN academic_info a ON p.sid = a.sid
WHERE p.gender = "Female" AND p.city = "Mumbai"
GROUP BY performance_grade;

-- 71. Find the average marks of students from each city and display only cities with an average above 400.
SELECT 
    p.city, 
    AVG(a.total_marks) AS avg_marks
FROM personal_info p
JOIN academic_info a ON p.sid = a.sid
GROUP BY p.city
HAVING AVG(a.total_marks) > 400;

-- 72. Find the number of students from each city who scored 450 or more.
SELECT 
    p.city, 
    COUNT(*) AS student_count
FROM personal_info p
JOIN academic_info a ON p.sid = a.sid
WHERE a.total_marks >= 450
GROUP BY p.city;

-- 73. Find the average marks of Fresh, Repeater, and X Repeater students.
SELECT 
    CASE 
        WHEN a.total_marks >= 420 THEN "Fresh"
        WHEN a.total_marks >= 350 THEN "Repeater"
        ELSE "X Repeater"
    END AS student_status,
    AVG(a.total_marks) AS avg_marks
FROM academic_info a
GROUP BY student_status;

-- 74. Find the number of students by city, gender, and performance grade.
SELECT 
    p.city,
    p.gender,
    CASE 
        WHEN a.total_marks >= 450 THEN "A"
        WHEN a.total_marks >= 400 THEN "B"
        ELSE "C"
    END AS performance_grade,
    COUNT(*) AS student_count
FROM personal_info p
JOIN academic_info a ON p.sid = a.sid
GROUP BY p.city, p.gender, performance_grade;

-- 75. Find the city with the highest average student marks.
SELECT p.city
FROM personal_info p
JOIN academic_info a ON p.sid = a.sid
GROUP BY p.city
ORDER BY AVG(a.total_marks) DESC
LIMIT 1;

-- 76. Find the class with the highest average marks.
SELECT class
FROM academic_info
GROUP BY class
ORDER BY AVG(total_marks) DESC
LIMIT 1;

-- 77. Find the number of students in each class who obtained Grade A.
SELECT 
    class,
    COUNT(*) AS grade_a_count
FROM academic_info
WHERE total_marks >= 450
GROUP BY class;

-- 78. Find the average marks of male and female students separately for each class.
SELECT a.class,p.gender,
    AVG(a.total_marks) AS avg_marks
FROM personal_info p
JOIN academic_info a ON p.sid = a.sid
GROUP BY a.class, p.gender;

-- 79. Display cities having more than 5 students with marks above 400.
SELECT p.city
FROM personal_info p
JOIN academic_info a ON p.sid = a.sid
WHERE a.total_marks > 400
GROUP BY p.city
HAVING COUNT(p.sid) > 5;
*/
-- 80. Find the number of female students from Mumbai in each grade and display only grades having at least 2 students.
SELECT 
    CASE 
        WHEN a.total_marks >= 450 THEN "A"
        WHEN a.total_marks >= 400 THEN "B"
        ELSE "C"
    END AS grade,
    COUNT(*) AS student_count
FROM personal_info p
JOIN academic_info a 
ON p.sid = a.sid
WHERE p.gender = "Female" AND p.city = "Mumbai"
GROUP BY grade
HAVING COUNT(*) >= 2;

