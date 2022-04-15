drop table master_data cascade constraints;
create table master_data(
id     			integer, 
AllowanceName   varchar2(30), 
AllowanceQuantity number, 
        PRIMARY KEY (id)
);
insert into master_data values (1,'home',10);
insert into master_data values (2,'medical',20);
insert into master_data values (3,'phone',5);
insert into master_data values (4,'transport',10);
insert into master_data values (5,'others',2);


drop table company_employee cascade constraints;
create table company_employee(
employId       integer not null, 
Name   varchar2(30),
Post   varchar2(30), 
Basicsalary    number,
City   varchar2(30), 
        PRIMARY KEY (employId)
);
insert into company_employee values(1,'zohora','manager',130000,'Dhaka');
insert into company_employee values(2,'zakir','senior software engineer',25000,'Dhaka');
insert into company_employee values(3,'qasim','senior software engineer',30000,'Dhaka');
insert into company_employee values(4,'yusuf','software engineer',22600,'Dhaka');
insert into company_employee values(5,'wahlid','software engineer',23000,'Dhaka');
insert into company_employee values(6,'khadija','programmer',19000,'Dhaka');
insert into company_employee values(7,'anika','programmer',18500,'Dhaka');
insert into company_employee values(8,'mim','programmer',17000,'Dhaka');
insert into company_employee values(9,'irfan','programmer',17400,'Dhaka');
insert into company_employee values(10,'ismail','programmer',18600,'Dhaka');


drop table monthlyOthers_deduction cascade constraints;
create table monthlyOthers_deduction(
deductionId    integer not null,
employId       integer,
deductionAmount number , 
		FOREIGN KEY(employId) REFERENCES company_employee(employId), 
        PRIMARY KEY (deductionId)
);
insert into monthlyothers_deduction values(1,1,0);
insert into monthlyothers_deduction values(2,2,0);
insert into monthlyothers_deduction values(3,3,0);
insert into monthlyothers_deduction values(4,4,0);
insert into monthlyothers_deduction values(5,5,0);
insert into monthlyothers_deduction values(6,6,0);
insert into monthlyothers_deduction values(7,7,0);
insert into monthlyothers_deduction values(8,8,0);
insert into monthlyothers_deduction values(9,9,0);
insert into monthlyothers_deduction values(10,10,0);

drop table loan_table cascade constraints;
create table loan_table(
loanId  	   integer,
employId       integer,
totalLoanamount number,
monthlyDeduction number, 
		FOREIGN KEY(employId) REFERENCES company_employee(employId), 
        PRIMARY KEY (loanId)
);
insert into loan_table values(1,1,100000,5000);
insert into loan_table values(2,2,100000,5000);
insert into loan_table values(3,3,100000,5000);
insert into loan_table values(4,4,100000,5000);
insert into loan_table values(5,5,100000,5000);
insert into loan_table values(6,6,100000,5000);
insert into loan_table values(7,7,100000,5000);
insert into loan_table values(8,8,100000,5000);
insert into loan_table values(9,9,100000,5000);
insert into loan_table values(10,10,100000,5000);

drop table employee_programmer;

create table employee_programmer as
select * from company_employee where Post='programmer';

select * from employee_programmer;


drop table employee_Nonprogrammer;

create table employee_Nonprogrammer as
select * from company_employee where Post!='programmer';

select * from employee_Nonprogrammer;

commit;