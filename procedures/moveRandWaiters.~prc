create or replace procedure moveRandWaiters(shift1 in varchar2, waiterId1 out number, startDate out date) is           
randWaiter1 waiter.idofwaiter%type;
eveningW number;
morningW number;
noonAfrerNoonW number;
flag boolean:=false;
--exit loop flag
exitflag boolean:=true;
waiterRec waiter%rowtype;
begin
  waiterId1:=0;
  startDate:=sysdate;
  if(not(shift1='Morning' or shift1='Noon-afternoon' or shift1='Evening')) then dbms_output.put_line('wrong input');--incorrect input 
  else--correct input
     dbms_output.put_line('shift: '||shift1||' date: '||startDate);
     select count(*) as numOfWaiters into eveningW from waiter where shift='Evening' group by shift;
     select count(*) as numOfWaiters into noonAfrerNoonW from waiter where shift='Noon-afternoon' group by shift;
     select count(*) as numOfWaiters into morningW from waiter where shift='Morning' group by shift;
     case
       when shift1='Morning' then if(morningW<eveningW and morningW<noonAfrerNoonW) then flag:=true; end if;
       when shift1='Noon-afternoon' then if(noonAfrerNoonW<eveningW and noonAfrerNoonW<morningW) then flag:=true; end if;
       when shift1='Evening' then if(eveningW<morningW and eveningW<noonAfrerNoonW)then flag:=true; end if;
       end case;
     if(flag=true)--need to move waiters to entered shift
     then 
     dbms_output.put_line('There are not enough waiters on this shift');
     dbms_output.put_line('System randonly moves 1 waiter from the other shifts to this one');
     --moving waiter to the shift
     loop
     select IdOfWaiter into randWaiter1--random waiter
     from waiter
     order by dbms_random.value()
     fetch first row only;
     
     select * into waiterRec--details about randWaiter1
     from waiter
     where IdOfWaiter=randWaiter1;
     --checking random waiter is on entered shift
     if(waiterRec.Shift=shift1) then exitflag:=false; else exitflag:=true;
     end if;
     exit when exitflag=true;
     end loop;
     --moving the random waiter to entered shift
     dbms_output.put_line('shift= '||shift1||' randWaiter1= '||randWaiter1||'waiterRec.Shift= '||waiterRec.Shift); 
     update waiter w
     set w.shift=shift1
     where w.IdOfWaiter= randWaiter1;
     --commit;
      dbms_output.put_line('commit '||'SQL%rowcount= '||SQL%rowcount); 
     if(SQL%rowcount>0)--update succedded
     --waiter1:=randWaiter1;
     then 
     dbms_output.put_line('The waiter: '||waiterRec.Firstname||' '||waiterRec.Lastname||' moved to '||shift1||' shift');
     waiterId1:=randWaiter1;
     end if;
     commit;
     else dbms_output.put_line('There are enough waiters on this shift'); end if;
     
  end if;
   
end moveRandWaiters;
/
