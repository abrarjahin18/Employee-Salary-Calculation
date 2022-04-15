SET SERVEROUTPUT ON;

create or replace procedure Total_salary(input_id IN company_employee.employId%TYPE)
				  IS
    total_deduction_money monthlyOthers_deduction.deductionAmount%TYPE:=0;
	basic company_employee.Basicsalary%TYPE:=0;
	temp company_employee.Basicsalary%TYPE:=0;
	allowance master_data.AllowanceQuantity%TYPE:=0;
	salary company_employee.Basicsalary%TYPE:=0;
	actual_salary company_employee.Basicsalary%TYPE:=0;
	total_allowance company_employee.Basicsalary%TYPE:=0;
	loan loan_table.monthlyDeduction%TYPE:=0;
	total_loan loan_table.totalLoanamount%TYPE:=0;
	current_loan loan_table.totalLoanamount%TYPE:=0;
	v_max number:=0;
begin 
	 
	 for N in (select employId from employee_programmer)loop
	       if(input_id=N.employId) then
		     DBMS_OUTPUT.PUT_LINE(input_id);
			 
		     select Basicsalary into basic from employee_programmer where employId=input_id;
			 
			 for R in (select AllowanceQuantity from master_data) loop
	           allowance:=R.AllowanceQuantity;
		       temp:=(basic*allowance)/100;
		       total_allowance:=total_allowance+temp;
	          --DBMS_OUTPUT.PUT_LINE(temp);
	         end loop;
			 
			 select monthlyDeduction into loan from loan_table where employId =input_id;
			 select totalLoanamount into total_loan from loan_table where employId =input_id;
			 current_loan:=total_loan-loan;
			 DBMS_OUTPUT.PUT_LINE(current_loan);
			 
			 total_deduction_money:=total_deduction(input_id);
			 --DBMS_OUTPUT.PUT_LINE(total_deduction_money);
			 salary:=basic+total_allowance;
			  actual_salary:=basic+total_allowance-total_deduction_money-loan;
			   DBMS_OUTPUT.PUT_LINE(actual_salary);
			
			
	        end if;
			
	    end loop;
		for N in (select employId from employee_Nonprogrammer)loop
	       if(input_id=N.employId) then
		     DBMS_OUTPUT.PUT_LINE(input_id);
			 
		     select Basicsalary into basic from employee_Nonprogrammer where employId=input_id;
			 
			 for R in (select AllowanceQuantity from master_data) loop
	           allowance:=R.AllowanceQuantity;
		       temp:=(basic*allowance)/100;
		       total_allowance:=total_allowance+temp;
	          --DBMS_OUTPUT.PUT_LINE(temp);
	         end loop;
			 
			 select monthlyDeduction into loan from loan_table where employId =input_id;
			 select totalLoanamount into total_loan from loan_table where employId =input_id;
			 current_loan:=total_loan-loan;
             DBMS_OUTPUT.PUT_LINE(current_loan);			 
			 
			 total_deduction_money:=total_deduction(input_id);
			 --DBMS_OUTPUT.PUT_LINE(total_deduction_money);
			 salary:=basic+total_allowance;
			  actual_salary:=basic+total_allowance-total_deduction_money-loan;
			   DBMS_OUTPUT.PUT_LINE(actual_salary);
	        end if;
			
	    end loop;
	 select max(salaryId) + 1 into v_max from monthly_salary;
	 		--DBMS_OUTPUT.PUT_LINE(v_max);
			insert into monthly_salary values (v_max,input_id,salary,loan,total_deduction_money,current_loan,actual_salary);
End Total_salary;
  /
  
  commit;