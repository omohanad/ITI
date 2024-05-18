use iti 
--1.Retrieve number of students who have a value in their age. 
SELECT count(St_Age)
FROM Student
WHERE St_Age IS NOT NULL;
-----------------
---Get all instructors Names without repetition
Select distinct(Ins_Name)
from Instructor
-----------------
--3)Display student with the following Format (use isNull function)
Select St_Id as student_ID, CONCAT_WS('',St_Fname,St_Lname) as Student_Ful_Name, Dept_Name
from student s, Department d 
where s.Dept_Id = d.Dept_Id and St_Id is null
-------------------
--4(Display instructor Name and Department Name  display all the instructors if they are attached to a department or not
Select Ins_Name, Dept_Name
from Instructor i left outer join Department d
on i.Dept_Id = d.Dept_Id
------------------------
--5(Display student full name and the name of the course he is taking For only courses which have a grade  
Select CONCAT(St_Fname,' ',St_Lname) as student_Full_Name, Grade, Crs_Name
from Student S inner join  Stud_Course SC
on s.St_Id = sc.St_Id
inner join Course c
on  SC.Crs_Id = c.Crs_Id
Where Grade is not null 
--------------------------
---6.Display number of courses for each topic name
Select Count(Crs_Id) as no_oF_courses, Top_Name
from Course c, Topic t
where c.Top_Id = t.Top_Id
group by Top_Name
---------------------------
--7 Display max and min salary for instructors
Select Max(Salary) as max_Salary, min(Salary) as min_Salary
from Instructor
---------------------------
--8.Display instructors who have salaries less than the average salary of all instructors.
Select  Avg(salary) as avg_sal 
from Instructor
where salary < (SELECT AVG(Salary) FROM Instructor) 
----------------------------
----9.Display the Department name that contains the instructor who receives the minimum salary.
Select Dept_Name
from Department d inner join Instructor i
on d.Dept_Id = i.Dept_Id
where salary < (SELECT AVG(Salary) FROM Instructor)
------------------------------
--10-Select max two salaries in instructor table. 
select top(2) Salary, Ins_Name
from Instructor
----------------------
--Select instructor name and his salary but if there is no salary display instructor bonus keyword. “use coalesce Function”
Select COALESCE(ins_name,CONVERT(VARCHAR, salary) ,'No_info') as result
from Instructor
--------------
--12.Select Average Salary for instructors 
Select AVG(salary)
from Instructor
-----------------
--13.Select Student first name and the data of his supervisor
Select s.St_Fname ,i.*
from Student s, Instructor i

where s.St_super = i.Ins_Id
-----------------------
--14.Write a query to select the highest two salaries in Each Department for instructors who have salaries. “using one of Ranking Functions”
select ins_name ,salary  , Row_number() over(order by ins_name desc) as Highest_salary
from Instructor
-------------------------------
--Write a query to select a random student from each department.  “using one of Ranking Functions”

SELECT St_Id AS student_ID,
       CONCAT_WS('', St_Fname, St_Lname) AS Student_Ful_Name,
       Dept_Name
FROM (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY Dept_Id ORDER BY NEWID()) AS RowNum
    FROM Student
) AS RankedStudents
JOIN Department d ON RankedStudents.Dept_Id = d.Dept_Id
WHERE RowNum = 1;
--------------------------------------


