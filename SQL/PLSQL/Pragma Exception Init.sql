-- SEÇÃO 13 - TRATAMENTO DE EXCEÇÕES
-- AULA 3 - PRAGMA EXCEPTION INIT

-- PRAGMA EXCEPTION INIT

DECLARE
   VEMPLOYEE_ID    EMPLOYEES.EMPLOYEE_ID%TYPE := 300;
   VFIRST_NAME     EMPLOYEES.FIRST_NAME%TYPE := 'ROBERT';
   VLAST_NAME      EMPLOYEES.LAST_NAME%TYPE := 'FORD';
   VJOB_ID         EMPLOYEES.JOB_ID%TYPE := 'XX_YYYY';
   VPHONE_NUMBER   EMPLOYEES.PHONE_NUMBER%TYPE := '650.511.9844';
   VEMAIL          EMPLOYEES.EMAIL%TYPE := 'RFORD';
   EFK_INEXISTENTE EXCEPTION;
   PRAGMA EXCEPTION_INIT(EFK_INEXISTENTE, -2291);

BEGIN
   INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, EMAIL, HIRE_DATE, JOB_ID)
   VALUES (VEMPLOYEE_ID, VFIRST_NAME, VLAST_NAME, VPHONE_NUMBER, VEMAIL, SYSDATE, VJOB_ID);

EXCEPTION
   WHEN EFK_INEXISTENTE THEN
      RAISE_APPLICATION_ERROR(-20003, 'JOB INEXISTENTE!');
   WHEN OTHERS THEN
      RAISE_APPLICATION_ERROR(-20002, 'ERRO ORACLE ' || SQLCODE || SQLERRM);
END;

--- Saida no console    
--  Relatório de erros 
--- ORA-20003: JOB INEXISTENTE!
--- ORA-06512: em line 17

-- FORÇANDO O ERRO PARA DESCOBRIR O CÓDIGO DE ERRO A SER TRATADO

INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, EMAIL, HIRE_DATE, JOB_ID)
VALUES (EMPLOYEES_SEQ.NEXTVAL, 'JOSEPH', 'SMITH', '3333333', 'JSMITH', SYSDATE, 'ZZZZ_XX');

--- Erro a partir da linha : 34 no comando -
---Relatório de erros -
---ORA-02291: restrição de integridade (HR.EMP_JOB_FK) violada - chave mãe não localizada