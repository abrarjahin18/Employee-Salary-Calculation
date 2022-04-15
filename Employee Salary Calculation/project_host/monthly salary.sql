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
insert into monthly_salary values(11,11,0,0,0,0,0);
insert into monthly_salary values(12,12,0,0,0,0,0);
insert into monthly_salary values(13,13,0,0,0,0,0);
insert into monthly_salary values(14,14,0,0,0,0,0);
insert into monthly_salary values(15,15,0,0,0,0,0);
insert into monthly_salary values(16,16,0,0,0,0,0);
insert into monthly_salary values(17,17,0,0,0,0,0);
insert into monthly_salary values(18,18,0,0,0,0,0);
insert into monthly_salary values(19,19,0,0,0,0,0);
insert into monthly_salary values(20,20,0,0,0,0,0);
insert into monthly_salary values(21,21,0,0,0,0,0);
insert into monthly_salary values(22,22,0,0,0,0,0);
insert into monthly_salary values(23,23,0,0,0,0,0);
insert into monthly_salary values(24,24,0,0,0,0,0);
insert into monthly_salary values(25,25,0,0,0,0,0);
insert into monthly_salary values(26,26,0,0,0,0,0);
insert into monthly_salary values(27,27,0,0,0,0,0);
insert into monthly_salary values(28,28,0,0,0,0,0);
insert into monthly_salary values(29,29,0,0,0,0,0);
insert into monthly_salary values(30,30,0,0,0,0,0);
insert into monthly_salary values(31,31,0,0,0,0,0);
insert into monthly_salary values(32,32,0,0,0,0,0);
insert into monthly_salary values(33,33,0,0,0,0,0);
insert into monthly_salary values(34,34,0,0,0,0,0);
insert into monthly_salary values(35,35,0,0,0,0,0);
insert into monthly_salary values(36,36,0,0,0,0,0);
insert into monthly_salary values(37,37,0,0,0,0,0);
insert into monthly_salary values(38,38,0,0,0,0,0);
insert into monthly_salary values(39,39,0,0,0,0,0);
insert into monthly_salary values(40,40,0,0,0,0,0);
