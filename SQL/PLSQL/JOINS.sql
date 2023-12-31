SELECT EMPLOYEES.EMPLOYEE_ID,
      EMPLOYEES.LAST_NAME,
      EMPLOYEES.DEPARTMENT_ID,
      DEPARTMENTS.DEPARTMENT_NAME
FROM EMPLOYEES
      JOIN DEPARTMENTS ON (
            EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
      );
SELECT E.EMPLOYEE_ID,
      E.LAST_NAME,
      E.DEPARTMENT_ID,
      D.DEPARTMENT_NAME
FROM EMPLOYEES E
      JOIN DEPARTMENTS D ON (E.DEPARTMENT_ID = D.DEPARTMENT_ID);
SELECT DEPARTMENT_ID,
      DEPARTMENT_NAME,
      LOCATION_ID,
      CITY
FROM DEPARTMENTS
      NATURAL JOIN LOCATIONS;
SELECT E.EMPLOYEE_ID,
      E.LAST_NAME,
      D.LOCATION_ID,
      DEPARTMENT_ID,
      D.DEPARTMENT_NAME
FROM EMPLOYEES E
      JOIN DEPARTMENTS D USING (DEPARTMENT_ID);
SELECT E.EMPLOYEE_ID,
      E.LAST_NAME,
      E.DEPARTMENT_ID,
      D.DEPARTMENT_ID,
      D.LOCATION_ID
FROM EMPLOYEES E
      JOIN DEPARTMENTS D ON (E.DEPARTMENT_ID = D.DEPARTMENT_ID);
SELECT E.EMPLOYEE_ID,
      J.JOB_TITLE,
      D.DEPARTMENT_NAME,
      L.CITY,
      L.STATE_PROVINCE,
      L.COUNTRY_ID
FROM EMPLOYEES E
      JOIN JOBS J ON E.JOB_ID = J.JOB_ID
      JOIN DEPARTMENTS D ON D.DEPARTMENT_ID = E.DEPARTMENT_ID
      JOIN LOCATIONS L ON D.LOCATION_ID = L.LOCATION_ID
ORDER BY E.EMPLOYEE_ID;
SELECT E.EMPLOYEE_ID,
      E.LAST_NAME,
      E.SALARY,
      E.DEPARTMENT_ID,
      D.DEPARTMENT_NAME
FROM EMPLOYEES E
      JOIN DEPARTMENTS D ON (E.DEPARTMENT_ID = D.DEPARTMENT_ID)
WHERE (
            E.SALARY BETWEEN 10000 AND 15000
      );
SELECT E.EMPLOYEE_ID,
      E.LAST_NAME,
      E.SALARY,
      E.DEPARTMENT_ID,
      D.DEPARTMENT_NAME
FROM EMPLOYEES E
      JOIN DEPARTMENTS D ON (E.DEPARTMENT_ID = D.DEPARTMENT_ID)
      AND (
            E.SALARY BETWEEN 10000 AND 15000
      );
SELECT EMPREGADO.EMPLOYEE_ID "ID EMPREGADO",
      EMPREGADO.LAST_NAME "SOBRENOME EMPREGADO",
      GERENTE.EMPLOYEE_ID "ID GERENTE",
      GERENTE.LAST_NAME "SOBRENOME GERENTE"
FROM EMPLOYEES EMPREGADO
      JOIN EMPLOYEES GERENTE ON (EMPREGADO.MANAGER_ID = GERENTE.EMPLOYEE_ID)
ORDER BY EMPREGADO.EMPLOYEE_ID;
SELECT E.EMPLOYEE_ID,
      E.SALARY,
      J.GRADE_LEVEL,
      J.LOWEST_SAL,
      J.HIGHEST_SAL
FROM EMPLOYEES E
      JOIN JOB_GRADES J ON NVL(E.SALARY, 0) BETWEEN J.LOWEST_SAL AND J.HIGHEST_SAL
ORDER BY E.SALARY;
SELECT E.EMPLOYEE_ID,
      J.JOB_TITLE,
      D.DEPARTMENT_NAME,
      L.CITY,
      L.STATE_PROVINCE,
      L.COUNTRY_ID
FROM EMPLOYEES E
      INNER JOIN JOBS J ON E.JOB_ID = J.JOB_ID
      INNER JOIN DEPARTMENTS D ON D.DEPARTMENT_ID = E.DEPARTMENT_ID
      INNER JOIN LOCATIONS L ON D.LOCATION_ID = L.LOCATION_ID
ORDER BY E.EMPLOYEE_ID;
SELECT DEPARTMENT_ID,
      DEPARTMENT_NAME,
      LOCATION_ID,
      CITY
FROM DEPARTMENTS NATURAL
      INNER JOIN LOCATIONS;
SELECT E.EMPLOYEE_ID,
      E.LAST_NAME,
      D.LOCATION_ID,
      DEPARTMENT_ID,
      D.DEPARTMENT_NAME
FROM EMPLOYEES E
      INNER JOIN DEPARTMENTS D USING (DEPARTMENT_ID);
SELECT E.FIRST_NAME,
      E.LAST_NAME,
      D.DEPARTMENT_ID,
      D.DEPARTMENT_NAME
FROM EMPLOYEES E
      LEFT OUTER JOIN DEPARTMENTS D ON (E.DEPARTMENT_ID = D.DEPARTMENT_ID)
ORDER BY D.DEPARTMENT_ID;
SELECT D.DEPARTMENT_ID,
      D.DEPARTMENT_NAME,
      E.FIRST_NAME,
      E.LAST_NAME
FROM EMPLOYEES E
      RIGHT OUTER JOIN DEPARTMENTS D ON (E.DEPARTMENT_ID = D.DEPARTMENT_ID)
ORDER BY D.DEPARTMENT_ID;
SELECT D.DEPARTMENT_ID,
      D.DEPARTMENT_NAME,
      E.FIRST_NAME,
      E.LAST_NAME
FROM EMPLOYEES E
      FULL OUTER JOIN DEPARTMENTS D ON (E.DEPARTMENT_ID = D.DEPARTMENT_ID)
ORDER BY D.DEPARTMENT_ID;