create or replace view View_masterData(AllowanceName,Quantity) as 
select AllowanceName,AllowanceQuantity from master_data@site_link;

select*from View_masterData;


create or replace view View_employee(Name,post) as 
select Name,Post from company_employee@site_link;

select*from View_employee;

create or replace view View_employee1(Name,salary) as 
select Name,Basicsalary from company_employee@site_link;

select*from View_employee1;


create or replace view View_deduction(ID,deduction) as 
select employId,deductionAmount from monthlyOthers_deduction@site_link;

select*from View_deduction;


create or replace view View_loan(ID,total_loan,deduction) as 
select employId,totalLoanamount,monthlyDeduction from loan_table@site_link;

select*from View_loan;


create or replace view View_salary(salaryId,employId,actualSalary) as 
select salaryId,employId,actualSalary from monthly_salary@site_link;

select*from View_salary;