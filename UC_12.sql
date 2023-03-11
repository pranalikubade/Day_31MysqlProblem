select * from employee_payroll;

select Salary from employee_payroll where EmployeeName = 'Amit';
select EmployeeName,Salary from employee_payroll where StartDate between cast('2015-01-01' as date) and date(now()); 

#total and average netpay of females
select avg(Salary) as Average_pay, sum(Salary) as Total_pay from employee_payroll where Gender = 'F' group by Gender;

#total and average netpay of males
select avg(Salary) as Average_pay, sum(Salary) as Total_pay from employee_payroll where Gender = 'M' group by Gender;

#minimum salary
select * from employee_payroll where Salary= (select min(Salary) as minimum_pay from employee_payroll);

#maximum salary
select * from employee_payroll where Salary = (select max(Salary) as minimum_pay from employee_payroll);

select count(EmployeeID) as Total_Employees from employee_payroll;
