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
SAVEPOINT UPDATEOK;
UPDATE EMPLOYEES
SET SALARY = 30000
WHERE JOB_ID = 'IT_PROG';
ROLLBACK TO UPDATEOK;
COMMIT;
DELETE FROM EMPLOYEES
WHERE EMPLOYEE_ID = 237;
COMMIT;