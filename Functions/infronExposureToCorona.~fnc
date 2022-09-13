create or replace function infronExposureToCorona(dateOfExposure in date,timeOfExposure in varchar2) return sys_refcursor is
  FunctionResult sys_refcursor;
  wrongTime exception;
  wrongDate exception;
  noDataFound exception;
begin
  OPEN FunctionResult FOR
       select distinct numOfOrder,timeOfOrder,firstName,lastName,customerPhone,email
       from Orderofmeal NATURAL JOIN payment NATURAL JOIN clubMember 
       where 1=2;
  if(dateOfExposure>sysdate or dateOfExposure<to_date('01-01-2000','dd-mm-yyyy')) then raise wrongDate; end if;
  if(not(timeOfExposure >='10:00' and timeOfExposure<='22:00')) then raise wrongTime; end if;
  OPEN FunctionResult FOR
       select distinct numOfOrder,timeOfOrder,firstName,lastName,customerPhone,email
       from Orderofmeal NATURAL JOIN payment NATURAL JOIN clubMember
       where dateOfOrder=dateOfExposure and timeOfOrder>=timeOfExposure and customerPhone=phoneNumber;
  return FunctionResult;
  exception
    when wrongDate 
      then dbms_output.put_line('Wrong date.'); return FunctionResult;
    when wrongTime 
      then dbms_output.put_line('The restaurant is closed at this time.'); return FunctionResult;
end infronExposureToCorona;
/
