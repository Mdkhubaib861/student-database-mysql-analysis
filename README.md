Problem Statement: Student Database Analysis Using MySQL
Background
A college wants to maintain and analyze student information using a MySQL database. The
student database contains two related tables:
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
8. Find all male students from Malegaon.
9. Find all female students from Mumbai.
10. Find students born between 2005 and 2006.
11. Find students whose total marks are greater than 400.
12. Find students whose total marks are between 350 and 450.
13. Find students belonging to the Final class with marks greater than 400.
14. Find female students from Malegaon who scored more than 400 marks.
Part C – Aggregate Functions
15. Find the total number of students.
16. Find the total number of male and female students.
17. Find the average marks of all students.
18. Find the highest marks obtained by any student.
19. Find the lowest marks obtained by any student.
20. Find the total marks obtained by all students.
21. Find the average marks of male students.
22. Find the average marks of female students.
Part D – GROUP BY
23. Count the number of students in each city.
24. Count the number of male and female students.
25. Count students according to their year of birth.
26. Find the average marks for each class.
27. Find the highest marks in each class.
28. Find the lowest marks in each class.
29. Find the number of students in each class.
30. Find the average marks for each city.
Part E – HAVING Clause
31. Display only those cities having more than 10 students.
32. Display classes having an average score greater than 400.
33. Display years of birth having more than 30 students.
34. Display cities where the average marks are greater than 400.
35. Display gender groups having more than 40 students.
Part F – INNER JOIN
Use sid as the common field between personal_info and academic_info.
36. Display student name, gender, city, class, roll number, and total marks.
37. Display all female students along with their academic information.
38. Display students from Malegaon along with their marks.
39. Display students who scored more than 400 marks along with their personal details.
40. Display the names and marks of students from Mumbai.
41. Display student name, city, class, and marks for students from Pune.
42. Display students whose marks are between 350 and 450 along with their personal
information.
Part G – LEFT JOIN
43. Use a LEFT JOIN to display all students from personal_info along with their
academic information.
44. Display all students from the personal information table, even if academic
information is not available.
45. Find students who do not have matching academic records.
Part H – RIGHT JOIN
46. Use a RIGHT JOIN to display all academic records along with the corresponding
student information.
47. Find academic records for which matching personal information is not available.
Part I – CASE Statement
Use a CASE statement to classify students according to their marks.
48. Create a performance category using the following rules:
Marks Grade
450 and above A
400–449 B
350–399 C
Below 350 D
49. Display student name, total marks, and grade.
50. Count how many students belong to each grade.
51. Find the number of female students in each grade.
52. Find the number of male students in each grade.
53. Display students with their grade and city.
Part J – CASE with Year of Birth
Classify students according to their year of birth:
Year of Birth Status
2005 Fresh
2006 Repeater
2007 X Repeater
54. Display student name, date of birth, year of birth, and status.
55. Count students in each status category.
56. Find the number of Fresh, Repeater, and X Repeater students in each city.
57. Find the average marks of each status category.
Part K – JOIN + WHERE + CASE
58. Display the names of female students from Mumbai and classify them according to
their marks.
59. Display male students from Malegaon who scored more than 400 marks and show
their performance grade.
60. Display female students from Pune with their class, marks, and performance grade.
61. Display students from Nashik with their year-of-birth status and academic grade.
62. Find female students from Mumbai and show the number of students in each
performance grade.
Part L – JOIN + GROUP BY + Aggregation
63. Find the average marks of male and female students.
64. Find the average marks of students in each city.
65. Find the number of students in each city and gender combination.
66. Find the average marks for each class and gender.
67. Find the highest marks obtained by male and female students in each city.
68. Find the number of students in each city who scored more than 400 marks.
69. Find the number of students in each performance grade for every city.
Part M – Advanced Combined Queries
Write SQL queries that combine JOIN, WHERE, GROUP BY, HAVING, aggregate functions,
and CASE statements.
70. Find the number of female students from Mumbai in each performance grade.
71. Find the average marks of students from each city and display only cities with an
average above 400.
72. Find the number of students from each city who scored 450 or more.
73. Find the average marks of Fresh, Repeater, and X Repeater students.
74. Find the number of students by city, gender, and performance grade.
75. Find the city with the highest average student marks.
76. Find the class with the highest average marks.
77. Find the number of students in each class who obtained Grade A.
78. Find the average marks of male and female students separately for each class.
79. Display cities having more than 5 students with marks above 400.
80. Find the number of female students from Mumbai in each grade and display only
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
