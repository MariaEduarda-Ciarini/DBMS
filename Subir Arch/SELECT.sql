DESC EMPLOYEES; 
DESC DEPARTMENTS;

SELECT * 
FROM 
 employees;

SELECT
    region_id,
    region_name
FROM
    regions;
    
SELECT
    department_id,
    department_name,
    manager_id,
    location_id
FROM
    departments;
    
SELECT 
   employee_id, 
   first_name, 
   last_name, salary 
FROM 
   employees;

SELECT 
   department_id, 
   department_name, 
   manager_id 
FROM  
  departments;

SELECT
    first_name, 
    last_name, salary, 
    salary *  2.05
FROM
   employees;
   
SELECT
    first_name, 
    last_name, salary, 
    salary + 100 *  2.05
FROM
   employees;   
   
SELECT
    first_name, 
    last_name, salary, 
    (salary + 100) *  2.05
FROM
   employees;  
   
SELECT 
   FIRST_NAME, 
   LAST_NAME, 
   JOB_ID,
   SALARY, 
   COMMISSION_PCT, 200000 * COMMISSION_PCT
FROM 
   EMPLOYEES
WHERE
   COMMISSION_PCT  IS NULL;
 
SELECT 
   FIRST_NAME NOME, 
   LAST_NAME SOBRENOME,
   SALARY SALÁRIO
FROM 
  EMPLOYEES;
  
  SELECT 
   FIRST_NAME  "Nome", 
   LAST_NAME "Sobrenome",
   SALARY "Salário",
   COMMISSION_PCT "Percentual de comissão"
FROM 
  EMPLOYEES;
  
SELECT
 FIRST_NAME || '  ' ||
 LAST_NAME   || ',  data de admissão:  '  ||
 HIRE_DATE  "Funcionário"
FROM 
 EMPLOYEES;
 
 SELECT
 FIRST_NAME || '  ' ||
 LAST_NAME   || ', salário:  '  ||
 SALARY  "Funcionário"
FROM 
 EMPLOYEES;
 
SELECT 
  DEPARTMENT_NAME || 
  ' Department''s Manager Id: '
  || manager_id AS "Departamento e Gerente"
FROM
  DEPARTMENTS;

SELECT
  DEPARTMENT_ID
FROM 
  EMPLOYEES;

SELECT
  DISTINCT
  DEPARTMENT_ID
FROM 
  EMPLOYEES;

SELECT
  DISTINCT
  FIRST_NAME, LAST_NAME
FROM 
  EMPLOYEES;
FIRST_NAME, LAST_NAME
FROM 
   EMPLOYEES;
