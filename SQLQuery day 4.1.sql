1.	--Display (Using Union Function) a-The name and the gender of the dependence that's gender is Female and depending on Female Employee.

Select Dependent_name, d.sex
from Dependent d inner join Employee e
on d.ESSN = e.SSN
where d.Sex = 'f' and e.sex = 'f'
union
Select fname, sex
from Employee
where Sex = 'F'


--And the male dependence that depends on Male Employee
Select Dependent_name, d.sex
from Dependent d inner join Employee e
on d.ESSN = e.SSN
where d.Sex = 'M' and e.sex = 'M'
union
Select fname, sex
from Employee
where Sex = 'M'


--For each project, list the project name and the total hours per week (for all employees) spent on that project.

Select Hours,Pname ,fname
from Employee inner join  Works_for
on SSN = ESSN
inner join Project on Pno = Pnumber

--Display the data of the department which has the smallest employee ID over all employees' ID.
Select d.*, e.SSn
from Departments d inner join Employee e
on d.Dnum = e.dno
Where e.SSn =(Select min(SSN)
from Employee
)
--For each department, retrieve the department name and the maximum, minimum and average salary of its employees.
SELECT d.Dname, 
       MAX(e.Salary) AS Max_Salary, 
       MIN(e.Salary) AS Min_Salary, 
       AVG(e.Salary) AS Avg_Salary
FROM Departments d
INNER JOIN Employee e ON d.Dnum = e.Dno
GROUP BY d.Dname;

--List the full name of all managers who have no dependents
SELECT CONCAT(E.Fname, ' ', E.Lname) AS Manager_Name
FROM Employee E
WHERE E.SSN IN (
    SELECT Superssn
    FROM Employee
    WHERE Superssn IS NOT NULL
)
AND E.SSN NOT IN (
    SELECT DISTINCT ESSN
    FROM Dependent
);
--For each department-- if its average salary is less than the average salary of all employees-- display its number, name and number of its employees.

SELECT CONCAT(E.fname, ' ', E.lname) AS Employee_name,
       E.dno,
       E.SSN
FROM Employee E
INNER JOIN (
    SELECT dno, AVG(salary) AS avg_salary
    FROM Employee
    GROUP BY dno
) AS AvgSalaries ON E.dno = AvgSalaries.dno
WHERE E.salary < AvgSalaries.avg_salary;

--d-----------------------
Select top(2) (Select max(salary)
           from Employee) as max_salary
From Employee

--Get the full name of employees that is similar to any dependent name
Select concat(fname,'',lname) as Employee_name
from Employee
intersect 
Select Dependent_name
from Dependent


--In the department table insert new department called "DEPT IT" , with id 100, employee with SSN = 112233 as a manager for this department. The start date for this manager is '1-11-2006
Insert into Departments(Dname, Dnum, MGRSSN, MGRStartDate)
Values('DEPT IT', 100, 112233, '1-11-2006')  
 --12.Do what is required if you know that : Mrs.Noha Mohamed(SSN=968574)  moved to be the manager of the new department (id = 100), and they give you(your SSN =102672) her position (Dept. 20 manager) 

--	First try to update her record in the department table
--Update your record to be department 20 manager.
--Update the data of employee number=102660 to be in your teamwork (he will be supervised by you) (your SSN =102672)

Update Departments Set MGRSSN = 102672
WHERE Dnum = 100
Update Employee Set Superssn = 102672
where SSn = 102660

--13. Mr. Kamel Mohamed (SSN=223344) so try to delete his data from your database in case you know that you will be temporarily in his position.Hint: (Check if Mr. Kamel has dependents, works as a department manager, supervises any employees or works in any projects and handle these cases).
 Select * From Dependent 
 Where ESSN = 223344
Delete from Dependent
Where ESSn = 223344  
 Select * From Employee

 Where SSN = 223344
 Delete From Works_for 
 Where ESSn = 223344
 Delete from Employee 
 Where SSN = 223344
----14.	Try to update all salaries of employees who work in Project ‘Al Rabwah’ by 30%
Update Employee
Set Salary =  salary *1.30
Where SSn in (Select ssn from Employee inner join Works_for on SSn = ESSn 
inner join project on pno = Pnumber 
where Pname = 'Al Rabwah')
