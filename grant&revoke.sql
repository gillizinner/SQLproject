GRANT all ON Orderofmeal TO weingot;
GRANT SELECT,INSERT,UPDATE ON waiter TO aguttman;
GRANT DELETE,REFERENCES,ALTER ON payment TO rbauer;

REVOKE all ON Orderofmeal FROM weingot;
REVOKE SELECT ON waiter FROM aguttman;
REVOKE DELETE,REFERENCES ON payment FROM rbauer;



