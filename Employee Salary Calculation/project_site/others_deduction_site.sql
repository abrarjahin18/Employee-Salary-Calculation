SET SERVEROUTPUT ON;

DECLARE

    A monthlyOthers_deduction.EmployId%TYPE:=&y;

	v_new_deduction_amount monthlyOthers_deduction.deductionAmount%TYPE:=&x;
	F monthlyOthers_deduction.deductionAmount%TYPE:=0;
	G monthlyOthers_deduction.deductionAmount%TYPE:=0;
	v_max number;
BEGIN
			--select deductionAmount into F from monthlyOthers_deduction where EmployId= A; 
			
			select max(deductionid) + 1
			into v_max
			from monthlyOthers_deduction;
				
				--F:=R.deductionAmount;
				--DBMS_OUTPUT.PUT_LINE(F);
				--G := v_new_deduction_amount+F;
				
			
			DBMS_OUTPUT.PUT_LINE(G);
			--update monthlyOthers_deduction set deductionAmount = G where EmployId=A;
			insert into monthlyOthers_deduction (deductionid, EmployId, deductionAmount) values (v_max, A, v_new_deduction_amount);

 End;
  /
  
  commit;
