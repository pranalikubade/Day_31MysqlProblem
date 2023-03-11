#total and average salary of females
select avg(Salary) as Average_pay, sum(Salary) as Total_pay from employee_payroll where Gender = 'F' group by Gender;

#total and average salary of males
select avg(Salary) as Average_pay, sum(Salary) as Total_pay from employee_payroll where Gender = 'M' group by Gender;

#minimum salary
select * from employee_payroll where Salary = (select min(Salary) as minimum_pay from employee_payroll);

#maximum salary
select * from employee_payroll where Salary = (select max(Salary) as minimum_pay from employee_payroll);

select count(EmployeeID) as Total_Employees from employee_payroll;
