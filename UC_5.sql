select Salary from employee_payroll where EmployeeName = 'Amit';
select EmployeeName, Salary from employee_payroll where StartDate between cast('2015-01-01' as date) and date(now()); 
