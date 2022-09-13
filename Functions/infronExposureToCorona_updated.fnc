create or replace function infronExposureToCorona(dateOfExposure in date,timeOfExposure in varchar2) return sys_refcursor is
  FunctionResult sys_refcursor;
begin
  OPEN FunctionResult FOR
       select *
       from Orderofmeal NATURAL JOIN payment
       where dateOfOrder=dateOfExposure and timeOfOrder>=timeOfExposure;
  return FunctionResult;
  
end infronExposureToCorona;
/
