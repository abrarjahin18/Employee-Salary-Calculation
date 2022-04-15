drop table monthly_salary cascade constraints;

create table monthly_salary(
salaryId      integer,
employId      integer,  
totalSalary number, 
loanDeduction number,
othersDeduction number,
currentLoanAmount number,
actualSalary number,
        PRIMARY KEY (salaryId),
		FOREIGN KEY(employId) REFERENCES company_employee(employId) 
);

insert into monthly_salary values(1,1,0,0,0,0,0);
insert into monthly_salary values(2,2,0,0,0,0,0);
insert into monthly_salary values(3,3,0,0,0,0,0);
insert into monthly_salary values(4,4,0,0,0,0,0);
insert into monthly_salary values(5,5,0,0,0,0,0);
insert into monthly_salary values(6,6,0,0,0,0,0);
insert into monthly_salary values(7,7,0,0,0,0,0);
insert into monthly_salary values(8,8,0,0,0,0,0);
insert into monthly_salary values(9,9,0,0,0,0,0);
insert into monthly_salary values(10,10,0,0,0,0,0);
commit;