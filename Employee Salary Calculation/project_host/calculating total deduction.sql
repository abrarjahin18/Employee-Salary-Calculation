create or replace function total_deduction(employe in integer)
  return number
  --return monthlyOthers_deduction.deductionAmount%TYPE
  is
 --declare
    temp monthlyOthers_deduction.deductionAmount%TYPE:=0;
	total_amount monthlyOthers_deduction.deductionAmount%TYPE:=0;

begin
	
	for R in(select deductionAmount from monthlyOthers_deduction where employId=employe)loop
	    temp:= R.deductionAmount;
        total_amount:=total_amount+temp;
	
    end loop;
	return total_amount;
end total_deduction;
/