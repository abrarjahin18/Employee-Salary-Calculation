SET SERVEROUTPUT ON;
declare
 A integer:=&y;
 v_max number:=0;
begin
     
   select max(employId) into v_max from company_employee;
   if(A<v_max)then
    Total_salary(A);
	else
	    dbms_output.put_line('employee id not exist');
	end if;
 
	
end;
/