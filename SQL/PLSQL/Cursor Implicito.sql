-- Aula sobre Cursor Implícito

SET SERVEROUTPUT ON
DECLARE vDEPARTMENT_ID EMPLOYEES.DEPARTMENT_ID %TYPE := 60;
vPERCENTUAL NUMBER(3) := 10;
BEGIN
UPDATE EMPLOYEES
SET SALARY = SALARY * (1 + VPERCENTUAL / 100)
WHERE DEPARTMENT_ID = vDEPARTMENT_ID;
DBMS_OUTPUT.PUT_LINE(
    'Numero de Empregados atualizados: ' || SQL %ROWCOUNT
);
END;
/ ROLLBACK;