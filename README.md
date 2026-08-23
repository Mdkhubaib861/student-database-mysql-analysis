Problem Statement: Student Database Analysis Using
MySQL

Background

A college wants to maintain and analyze student information using a MySQL database.

The student database contains two related tables:
1. personal_info – stores personal details such as student ID, name, gender, date of
birth, and city.
2. academic_info – stores academic details such as roll number, student ID, class, and
total marks.
The college wants to combine these tables and generate useful reports about students, their
academic performance, gender, city, year of birth, class, and performance category.
You are required to use SQL queries to perform data retrieval, filtering, joining, aggregation,
grouping, and classification.
Objective
Write SQL queries to analyze the student database and answer the following business
questions.
Part A – Basic Data Retrieval

1. Display all records from the personal_info table.
2. Display all records from the academic_info table.
3. Display only the student name, gender, and city.
4. Display the names of students who belong to Malegaon.
5. Display students born in 2006.
6. Display all female students.
7. Display students from Mumbai, Pune, and Nashik.
Part B – WHERE Clause

9. Find all male students from Malegaon.
10. Find all female students from Mumbai.
11. Find students born between 2005 and 2006.
12. Find students whose total marks are greater than 400.
13. Find students whose total marks are between 350 and 450.
14. Find students belonging to the Final class with marks greater than 400.
15. Find female students from Malegaon who scored more than 400 marks.
Part C – Aggregate Functions

17. Find the total number of students.
18. Find the total number of male and female students.
19. Find the average marks of all students.
20. Find the highest marks obtained by any student.
21. Find the lowest marks obtained by any student.
22. Find the total marks obtained by all students.
23. Find the average marks of male students.
24. Find the average marks of female students.
Part D – GROUP BY

26. Count the number of students in each city.
27. Count the number of male and female students.
28. Count students according to their year of birth.
29. Find the average marks for each class.
30. Find the highest marks in each class.
31. Find the lowest marks in each class.
32. Find the number of students in each class.
33. Find the average marks for each city.
Part E – HAVING Clause
34. Display only those cities having more than 10 students.
35. Display classes having an average score greater than 400.
36. Display years of birth having more than 30 students.
37. Display cities where the average marks are greater than 400.
38. Display gender groups having more than 40 students.
Part F – INNER JOIN
Use sid as the common field between personal_info and academic_info.
39. Display student name, gender, city, class, roll number, and total marks.
40. Display all female students along with their academic information.
41. Display students from Malegaon along with their marks.
42. Display students who scored more than 400 marks along with their personal details.
43. Display the names and marks of students from Mumbai.
44. Display student name, city, class, and marks for students from Pune.
45. Display students whose marks are between 350 and 450 along with their personal
information.
Part G – LEFT JOIN
46. Use a LEFT JOIN to display all students from personal_info along with their
academic information.
47. Display all students from the personal information table, even if academic
information is not available.
48. Find students who do not have matching academic records.
Part H – RIGHT JOIN
49. Use a RIGHT JOIN to display all academic records along with the corresponding
student information.
50. Find academic records for which matching personal information is not available.
Part I – CASE Statement
Use a CASE statement to classify students according to their marks.
51. Create a performance category using the following rules:
Marks Grade
450 and above A
400–449 B
350–399 C
Below 350 D
52. Display student name, total marks, and grade.
53. Count how many students belong to each grade.
54. Find the number of female students in each grade.
55. Find the number of male students in each grade.
56. Display students with their grade and city.
Part J – CASE with Year of Birth
Classify students according to their year of birth:
Year of Birth Status
2005 Fresh
2006 Repeater
2007 X Repeater
57. Display student name, date of birth, year of birth, and status.
58. Count students in each status category.
59. Find the number of Fresh, Repeater, and X Repeater students in each city.
60. Find the average marks of each status category.
Part K – JOIN + WHERE + CASE
61. Display the names of female students from Mumbai and classify them according to
their marks.
62. Display male students from Malegaon who scored more than 400 marks and show
their performance grade.
63. Display female students from Pune with their class, marks, and performance grade.
64. Display students from Nashik with their year-of-birth status and academic grade.
65. Find female students from Mumbai and show the number of students in each
performance grade.
Part L – JOIN + GROUP BY + Aggregation
66. Find the average marks of male and female students.
67. Find the average marks of students in each city.
68. Find the number of students in each city and gender combination.
69. Find the average marks for each class and gender.
70. Find the highest marks obtained by male and female students in each city.
71. Find the number of students in each city who scored more than 400 marks.
72. Find the number of students in each performance grade for every city.
Part M – Advanced Combined Queries
Write SQL queries that combine JOIN, WHERE, GROUP BY, HAVING, aggregate functions,
and CASE statements.
73. Find the number of female students from Mumbai in each performance grade.
74. Find the average marks of students from each city and display only cities with an
average above 400.
75. Find the number of students from each city who scored 450 or more.
76. Find the average marks of Fresh, Repeater, and X Repeater students.
77. Find the number of students by city, gender, and performance grade.
78. Find the city with the highest average student marks.
79. Find the class with the highest average marks.
80. Find the number of students in each class who obtained Grade A.
81. Find the average marks of male and female students separately for each class.
82. Display cities having more than 5 students with marks above 400.
83. Find the number of female students from Mumbai in each grade and display only
grades having at least 2 students.

Final Challenge
Create a single SQL report that displays:
• Student ID
• Student Name
• Gender
• City
• Date of Birth
• Year of Birth
• Year-of-Birth Status
• Roll Number
• Class
• Total Marks
• Performance Grade
The query should use:
• INNER JOIN
• WHERE
• CASE
• Aggregate functions
• GROUP BY
• HAVING
Finally, create a summary report showing the number of students in each city, gender, class,
and performance grade.
