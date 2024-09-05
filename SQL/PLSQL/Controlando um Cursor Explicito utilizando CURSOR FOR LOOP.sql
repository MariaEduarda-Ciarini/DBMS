-- Seção 12 - Cursor Explícito
--
-- Aula 2 - Controlando um Cursor Explícito utilizando CURSOR FOR LOOP
--

-- Controlando um Cursor Explícito utilizando CURSOR FOR LOOP

SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE
  CURSOR employees_cursor IS
    SELECT *
    FROM employees;
BEGIN
  FOR employees_record IN employees_cursor
  LOOP
    DBMS_OUTPUT.PUT_LINE(employees_record.employee_id || ' - ' ||
                         employees_record.first_name || ' ' || 
                         employees_record.last_name || ' - ' ||
                         employees_record.department_id || ' - ' ||
                         employees_record.job_id || ' - ' ||
                         employees_record.phone_number || ' - ' ||
                         LTRIM(TO_CHAR(employees_record.salary, 'L99G999G999D99')));
  END LOOP;
END;


-- CURSOR FOR LOOP utilizando Sub-consulta

SET SERVEROUTPUT ON;
SET VERIFY OFF;

BEGIN
  FOR employees_record IN (SELECT *
                           FROM employees)
  LOOP
    DBMS_OUTPUT.PUT_LINE(employees_record.employee_id || ' - ' ||
                         employees_record.first_name || ' ' || 
                         employees_record.last_name || ' - ' ||
                         employees_record.department_id || ' - ' ||
                         employees_record.job_id || ' - ' ||
                         employees_record.phone_number || ' - ' ||
                         LTRIM(TO_CHAR(employees_record.salary, 'L99G999G999D99')));
  END LOOP;
END;

