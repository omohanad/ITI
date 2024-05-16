USE yy
--Display the Department id, name and id and the name of its manager
Select Dnum, Dname, MGrssn, fname
from Departments d, Employee e
where d.MGrssn =  e.Superssn 

--Display the name of the departments and the name of the projects under its control
select Dname, Pname
from Project p, Departments d
where p.Dnum =  d.Dnum
--Display the full data about all the dependence associated with the name of the employee they depend on him/her.
Select e.Fname  , d.*
from Employee e, Dependent d
where SSn = ESSN
--Display the Id, name and location of the projects in Cairo or Alex city.
select Pname, Pnumber,Plocation
from Project
where city in('Cairo' , 'Alex')
--5.Display the Projects full data of the projects with a name starts with "a" letter.
SELECT * 
FROM Project 
WHERE Pname LIKE 'a%'
--display all the employees in department 30 whose salary from 1000 to 2000 LE monthly
SELECT  Dnum, Fname, Salary
FROM Departments d JOIN  Employee e ON d.Dnum = e.Dno
WHERE  Dnum = 30   AND Salary BETWEEN 1000 AND 2000
--7 Retrieve the names of all employees in department 10 who works more than or equal10 hours per week on "AL Rabwah" project
SELECT Fname,Lname
FROM 
    Employee e
INNER JOIN 
    Departments d ON Dnum = Dno
INNER JOIN 
    Project  ON Dnum = Dno
WHERE Dnum = 10  AND Pname = 'Al Rabwah' AND Hours >= 10;
--8.Find the names of the employees who directly supervised with Kamel Mohamed
Select fname , lname
From Employee
where Superssn = 223344
--Retrieve the names of all employees and the names of the projects they are working on, sorted by the project name.

SELECT 
    e.fname, e.lname
FROM Employee e
INNER JOIN  Departments d ON e.Dno = d.Dnum
INNER JOIN  Project p ON d.Dnum = p.Dnum
ORDER BY  p.pname;

--For each project located in Cairo City , find the project number, the controlling department name ,the department manager last name ,address and birthdate
 
 Select Pnumber, Dnum, e.fname, e.lname
 from Employee e inner join Departments d on e.Dno = d.Dnum
 INNER JOIN  Project p ON d.Dnum = p.Dnum
 where city = 'cairo'
 --.	Display All Data of the managers
 Select * 
 from Employee inner join  departments d on e.dno = d.dnum
 where e.Superssn = d.MGRSSN

 --.	Display All Employees data and the data of their dependents even if they have no dependents
 select e.* 
 from Employee e left outer join  Dependent as d 
 on e.SSN = d.ESSN
 --.Insert your personal data to the employee table as a new employee in department number 30, SSN = 102672, Superssn = 112233, salary=3000.

 insert into Employee (Fname , Lname, SSN, Bdate, Address, Sex, Salary, Superssn, Dno)

 values('Mohand'. 'Osama',102672, '02-05-1997', 'cairo', 'M', 4000, 112233)
 --15.	Upgrade your salary by 20 % of its last value.
 UPDATE Employee
SET Salary = Salary * 1.20
where fname = 'Mohanad'

