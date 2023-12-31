-- Sem a condição
SELECT EMPLOYEE_ID,
  LAST_NAME,
  DEPARTMENT_ID
FROM EMPLOYEES
WHERE LAST_NAME = 'KING';
-- Com a condição
SELECT EMPLOYEE_ID,
  LAST_NAME,
  DEPARTMENT_ID
FROM EMPLOYEES
WHERE UPPER (LAST_NAME) = 'KING';
SELECT CONCAT (' Curso: ', 'Introdução ORACLE 19c'),
  SUBSTR ('Introdução 19c', 1, 11),
  LENGTH ('Introdução ORACLE 19c'),
  INSTR ('Introdução ORACLE 19c', 'ORACLE')
FROM DUAL;
SELECT FIRST_NAME "Nome",
  LPAD (FIRST_NAME, 30, ' ') "Nome alinhado a esquerda",
  RPAD (FIRST_NAME, 30, ' ') "Nome alinhado a direita"
FROM EMPLOYEES;
SELECT JOB_TITLE,
  REPLACE (JOB_TITLE, 'President', 'Presidente') CARGO
FROM JOBS
WHERE JOB_TITLE = 'President';
SELECT ROUND (45.923, 2),
  ROUND (45.924, 0)
FROM DUAL;
SELECT TRUNC (45.923, 2),
  TRUNC (45.923, 0)
FROM DUAL;
SELECT MOD (1300, 600) RESTO
FROM DUAL;
SELECT MOD (9990, 1500) RESTO
FROM DUAL;
SELECT ABS (-882),
  SQRT (1.900)
FROM DUAL;
SELECT SYSDATE
FROM DUAL;
SELECT 3500 * 0.50
FROM DUAL;
SELECT 3500 + 1750
FROM DUAL;
SELECT SYSDATE,
  SYSDATE + 30,
  SYSDATE + 60,
  SYSDATE - 30
FROM DUAL;
SELECT LAST_NAME,
  ROUND ((SYSDATE - HIRE_DATE) / 7, 2) "SEMANAS DE TRABALHO"
FROM EMPLOYEES;
SELECT FIRST_NAME,
  LAST_NAME,
  ROUND (MONTHS_BETWEEN(SYSDATE, HIRE_DATE), 2) "MESES DE TRABALHO"
FROM EMPLOYEES;
SELECT SYSDATE,
  ADD_MONTHS(SYSDATE, 3),
  NEXT_DAY (SYSDATE, 'Terca-Feira'),
  LAST_DAY (SYSDATE)
FROM DUAL;
SELECT SYSDATE,
  ROUND (SYSDATE, 'MONTH'),
  ROUND (SYSDATE, 'YEAR'),
  TRUNC (SYSDATE, 'MONTH'),
  TRUNC (SYSDATE, 'YEAR')
FROM DUAL;
SELECT SYSDATE,
  TO_CHAR (TRUNC (SYSDATE), 'DD/MM/YYYY HH24:MI:SS')
FROM DUAL;