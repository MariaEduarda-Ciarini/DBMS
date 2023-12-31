-- Controlando Transações do Banco de Dados

SET SERVEROUTPUT ON
DECLARE vEMPLOYEE_ID EMPLOYEES.EMPLOYEE_ID %TYPE := 150;
BEGIN
UPDATE EMPLOYEES
SET SALARY = 15000
WHERE EMPLOYEE_ID = vEMPLOYEE_ID;
COMMIT;
END;
DECLARE vEMPLOYEE_ID EMPLOYEES.EMPLOYEE_ID %TYPE := 150;
BEGIN
UPDATE EMPLOYEES
SET SALARY = 20000
WHERE EMPLOYEE_ID = vEMPLOYEE_ID;
ROLLBACK;
END;
BEGIN
INSERT INTO EMPLOYEES (
        EMPLOYEE_ID,
        FIRST_NAME,
        LAST_NAME,
        EMAIL,
        PHONE_NUMBER,
        HIRE_DATE,
        JOB_ID,
        SALARY,
        COMMISSION_PCT,
        MANAGER_ID,
        DEPARTMENT_ID
    )
VALUES (
        EMPLOYEES_SEQ.NEXTVAL,
        'Bonequinho',
        'Fornite',
        'BNFORTN',
        '994.738.34725',
        SYSDATE,
        'IT_PROG',
        15000,
        0.4,
        103,
        60
    );
SAVEPOINT INSERTOK;
UPDATE EMPLOYEES
SET SALARY = 30000
WHERE JOB_ID = 'IT_PROG';
ROLLBACK TO INSERTOK;
COMMIT;
END;