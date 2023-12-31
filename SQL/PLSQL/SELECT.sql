DESC EMPLOYEES;
DESC DEPARTMENTS;
SELECT *
FROM EMPLOYEES;
SELECT REGION_ID,
   REGION_NAME
FROM REGIONS;
SELECT DEPARTMENT_ID,
   DEPARTMENT_NAME,
   MANAGER_ID,
   LOCATION_ID
FROM DEPARTMENTS;
SELECT EMPLOYEE_ID,
   FIRST_NAME,
   LAST_NAME,
   SALARY
FROM EMPLOYEES;
SELECT DEPARTMENT_ID,
   DEPARTMENT_NAME,
   MANAGER_ID
FROM DEPARTMENTS;
SELECT FIRST_NAME,
   LAST_NAME,
   SALARY,
   SALARY * 2.05
FROM EMPLOYEES;
SELECT FIRST_NAME,
   LAST_NAME,
   SALARY,
   SALARY + 100 * 2.05
FROM EMPLOYEES;
SELECT FIRST_NAME,
   LAST_NAME,
   SALARY,
   (SALARY + 100) * 2.05
FROM EMPLOYEES;
SELECT FIRST_NAME,
   LAST_NAME,
   JOB_ID,
   SALARY,
   COMMISSION_PCT,
   200000 * COMMISSION_PCT
FROM EMPLOYEES
WHERE COMMISSION_PCT IS NULL;
SELECT FIRST_NAME NOME,
   LAST_NAME SOBRENOME,
   SALARY SALÁRIO
FROM EMPLOYEES;
SELECT FIRST_NAME "Nome",
   LAST_NAME "Sobrenome",
   SALARY "Salário",
   COMMISSION_PCT "Percentual de comissão"
FROM EMPLOYEES;
SELECT FIRST_NAME || '  ' || LAST_NAME || ',  data de admissão:  ' || HIRE_DATE "Funcionário"
FROM EMPLOYEES;
SELECT FIRST_NAME || '  ' || LAST_NAME || ', salário:  ' || SALARY "Funcionário"
FROM EMPLOYEES;
SELECT DEPARTMENT_NAME || ' Department''s Manager Id: ' || MANAGER_ID AS "Departamento e Gerente"
FROM DEPARTMENTS;
SELECT DEPARTMENT_ID
FROM EMPLOYEES;
SELECT DISTINCT DEPARTMENT_ID
FROM EMPLOYEES;
SELECT DISTINCT FIRST_NAME,
   LAST_NAME
FROM EMPLOYEES;
FIRST_NAME,
LAST_NAME
FROM EMPLOYEES;