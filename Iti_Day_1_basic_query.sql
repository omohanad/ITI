select *from Employee
--2.	Display the employee First name, last name, Salary and Department number
select Fname, Lname, Salary, Dno from Employee 
--3.	Display all the projects names, locations and the department which is responsible about it.
Select Pname, Plocation, Dnum from Project

--If you know that the company policy is to pay an annual commission for each employee with specific percent equals 10% of his/her annual salary .Display each employee full name and his annual commission in an ANNUAL COMM column (alias).
SELECT 
    Fname + ' ' + Lname AS FullName,
    (Salary * 0.1) AS AnnualCommission 
FROM 
    Employee;
--Display the employees Id, name who earns more than 1000 LE monthl
SELECT SSN, Fname 
FROM Employee
WHERE Salary >10000
--Display the names and salaries of the female employees y.
select Fname, Lname, Salary from Employee

where Sex = 'F'
--Display each department id, name which managed by a manager with id equals 968574.
Select Dname, Dnum from Departments
where MGRSSN = 968574
--Dispaly the ids, names and locations of  the pojects which controled with department 10.
Select Pname, Pnumber, Plocation from Project
where Dnum = 10
