

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
insert into company_employee values (1,'ahmed','CEO',200000,'Khulna');
insert into company_employee values (2,'akbar','senior manager',150000,'Dhaka');
insert into company_employee values (3,'zahid','general manager',141000,'Khulna');
insert into company_employee values (4,'joshim','general manager',140000,'Khulna');
insert into company_employee values (5,'aktar','manager',130000,'Rajshahi');
insert into company_employee values (6,'jishan','manager',139000,'Khulna');
insert into company_employee values (7,'nakib','manager',135000,'Khulna');
insert into company_employee values (8,'asif','senior software engineer',25200,'Dhaka');
insert into company_employee values (9,'azib','senior software engineer',25100,'Dhaka');
insert into company_employee values (10,'iqbal','senior software engineer',25300,'Dhaka');
insert into company_employee values (11,'nahid','senior software engineer',25600,'Dhaka');
insert into company_employee values (12,'novid','senior software engineer',25900,'Dhaka');
insert into company_employee values (13,'rakib','software engineer',25000,'chittagong');
insert into company_employee values (14,'mohammad','software engineer',24500,'chittagong');
insert into company_employee values (15,'russel','software engineer',25000,'chittagong');
insert into company_employee values (16,'arif','software engineer',22000,'chittagong');
insert into company_employee values (17,'arman','software engineer',23000,'chittagong');
insert into company_employee values (18,'ali','software engineer',22300,'chittagong');
insert into company_employee values (19,'afif','software engineer',21900,'chittagong');
insert into company_employee values (20,'zulkarnayin','software engineer',22000,'chittagong');


insert into company_employee values (21,'zohora','programmer',21900,'bogura');
insert into company_employee values (22,'shafi','programmer',21600,'faridpur');
insert into company_employee values (23,'hasan','programmer',21900,'gazipur');
insert into company_employee values (24,'hossain','programmer',21800,'gopalgong');
insert into company_employee values (25,'zakaria','programmer',21900,'coxs bazar');
insert into company_employee values (26,'zulfikar','programmer',21900,'shylhet');
insert into company_employee values (27,'shahed','programmer',21300,'moulobibazar');
insert into company_employee values (28,'tuhin','programmer',20900,'Dhaka');
insert into company_employee values (29,'shihab','programmer',20000,'barisal');
insert into company_employee values (30,'rafan','programmer',21900,'patuakhali');
insert into company_employee values (31,'rafsan','programmer',19000,'bagerhat');
insert into company_employee values (32,'talukdar','programmer',18000,'satkhira');
insert into company_employee values (33,'faisal','programmer',21900,'satkhira');
insert into company_employee values (34,'fahim','programmer',18900,'chittagong');
insert into company_employee values (35,'faysal','programmer',21900,'narayangong');
insert into company_employee values (36,'sowrav','programmer',20900,'chittagong');
insert into company_employee values (37,'tawhid','programmer',17900,'barisal');
insert into company_employee values (38,'tusar','programmer',17400,'Dhaka');
insert into company_employee values (39,'sadiul','programmer',16900,'chittagong');
insert into company_employee values (40,'sohel','programmer',20900,'chittagong');

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
insert into loan_table values(11,11,100000,5000);
insert into loan_table values(12,12,100000,5000);
insert into loan_table values(13,13,100000,5000);
insert into loan_table values(14,14,1000000,9000);
insert into loan_table values(15,15,145000,5000);
insert into loan_table values(16,16,200000,5000);
insert into loan_table values(17,17,745000,5000);
insert into loan_table values(18,18,135000,5000);
insert into loan_table values(19,19,167000,5000);
insert into loan_table values(20,20,300000,5000);
insert into loan_table values(21,21,800000,5000);
insert into loan_table values(22,22,900000,5000);
insert into loan_table values(23,23,100000,5000);
insert into loan_table values(24,24,100000,5000);
insert into loan_table values(25,25,100000,5000);
insert into loan_table values(26,26,100000,5000);
insert into loan_table values(27,27,100000,5000);
insert into loan_table values(28,28,100000,5000);
insert into loan_table values(29,29,100000,5000);
insert into loan_table values(30,30,100000,5000);
insert into loan_table values(31,31,100000,5000);
insert into loan_table values(32,32,100000,5000);
insert into loan_table values(33,33,100000,5000);
insert into loan_table values(34,34,100000,5000);
insert into loan_table values(35,35,100000,5000);
insert into loan_table values(36,36,100000,5000);
insert into loan_table values(37,37,100000,5000);
insert into loan_table values(38,38,100000,5000);
insert into loan_table values(39,39,100000,5000);
insert into loan_table values(40,40,100000,5000);

drop table monthlyOthers_deduction cascade constraints;
create table monthlyOthers_deduction(
deductionId    integer not null,
employId       integer,
deductionAmount number , 
		FOREIGN KEY(employId) REFERENCES company_employee(employId), 
        PRIMARY KEY (deductionId)
);

insert into monthlyOthers_deduction values(1,1,0);
insert into monthlyOthers_deduction values(2,2,0);
insert into monthlyOthers_deduction values(3,3,0);
insert into monthlyOthers_deduction values(4,4,0);
insert into monthlyOthers_deduction values(5,5,0);
insert into monthlyOthers_deduction values(6,6,0);
insert into monthlyOthers_deduction values(7,7,0);
insert into monthlyOthers_deduction values(8,8,0);
insert into monthlyOthers_deduction values(9,9,0);
insert into monthlyOthers_deduction values(10,10,0);
insert into monthlyOthers_deduction values(11,11,0);
insert into monthlyOthers_deduction values(12,12,0);
insert into monthlyOthers_deduction values(13,13,0);
insert into monthlyOthers_deduction values(14,14,0);
insert into monthlyOthers_deduction values(15,15,0);
insert into monthlyOthers_deduction values(16,16,0);
insert into monthlyOthers_deduction values(17,17,0);
insert into monthlyOthers_deduction values(18,18,0);
insert into monthlyOthers_deduction values(19,19,0);
insert into monthlyOthers_deduction values(20,20,0);

insert into monthlyOthers_deduction values(21,21,0);
insert into monthlyOthers_deduction values(22,22,0);
insert into monthlyOthers_deduction values(23,23,0);
insert into monthlyOthers_deduction values(24,24,0);
insert into monthlyOthers_deduction values(25,25,0);
insert into monthlyOthers_deduction values(26,26,0);
insert into monthlyOthers_deduction values(27,27,0);
insert into monthlyOthers_deduction values(28,28,0);
insert into monthlyOthers_deduction values(29,29,0);
insert into monthlyOthers_deduction values(30,30,0);
insert into monthlyOthers_deduction values(31,31,0);
insert into monthlyOthers_deduction values(32,32,0);
insert into monthlyOthers_deduction values(33,33,0);
insert into monthlyOthers_deduction values(34,34,0);
insert into monthlyOthers_deduction values(35,35,0);
insert into monthlyOthers_deduction values(36,36,0);
insert into monthlyOthers_deduction values(37,37,0);
insert into monthlyOthers_deduction values(38,38,0);
insert into monthlyOthers_deduction values(39,39,0);
insert into monthlyOthers_deduction values(40,40,0);



drop table employee_programmer;

create table employee_programmer as
select * from company_employee where Post='programmer';

select * from employee_programmer;


drop table employee_Nonprogrammer;

create table employee_Nonprogrammer as
select * from company_employee where Post!='programmer';

select * from employee_Nonprogrammer;

