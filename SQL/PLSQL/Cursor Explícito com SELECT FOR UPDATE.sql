-- Aula 4 - Cursor Explícito com SELECT FOR UPDATE
--

-- Cursor Explícito com SELECT FOR UPDATE

SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE
  CURSOR employees_cursor (pjob_id VARCHAR2) IS
    SELECT *
    FROM employees
    WHERE job_id = pjob_id
    FOR UPDATE;
BEGIN
  FOR employees_record IN employees_cursor('AD_VP')
  LOOP
    UPDATE employees
    SET salary = salary * (1 + 10 / 100)
    WHERE CURRENT OF employees_cursor;
  END LOOP;
  
  COMMIT;
END;

