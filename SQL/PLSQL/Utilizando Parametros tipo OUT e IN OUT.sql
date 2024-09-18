-- SEÇÃO 14 - PROCEDURES DE BANCO DE DADOS

-- AULA 3 - UTILIZANDO PARÂMETROS TIPO OUT E IN OUT

-- UTILIZANDO PARÂMETROS TIPO OUT

CREATE OR REPLACE PROCEDURE PRC_CONSULTA_EMPREGADO
  (
    PEMPLOYEE_ID    IN NUMBER,
    PFIRST_NAME     OUT VARCHAR2,
    PLAST_NAME      OUT VARCHAR2,
    PEMAIL          OUT VARCHAR2,
    PPHONE_NUMBER   OUT VARCHAR2,
    PHIRE_DATE      OUT DATE,
    PJOB_ID         OUT VARCHAR2,
    PSALARY         OUT NUMBER,
    PCOMMISSION_PCT OUT NUMBER,
    PMANAGER_ID     OUT NUMBER,
    PDEPARTMENT_ID  OUT NUMBER
  )
IS
  -- NENHUMA VARIÁVEL DECLARADA
BEGIN
  SELECT
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
  INTO
    PFIRST_NAME,
    PLAST_NAME,
    PEMAIL,
    PPHONE_NUMBER,
    PHIRE_DATE,
    PJOB_ID,
    PSALARY,
    PCOMMISSION_PCT,
    PMANAGER_ID,
    PDEPARTMENT_ID
  FROM EMPLOYEES
  WHERE EMPLOYEE_ID = PEMPLOYEE_ID;

EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RAISE_APPLICATION_ERROR(-20001, 'EMPREGADO NÃO EXISTE: ' || PEMPLOYEE_ID);
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20002, 'ERRO ORACLE ' || SQLCODE || SQLERRM);
END;
/

-- EXECUTANDO PROCEDURE PARÂMETRO TIPO OUT

SET SERVEROUTPUT ON;
SET VERIFY OFF;
DECLARE 
  EMPLOYEES_RECORD EMPLOYEES%ROWTYPE;
BEGIN
  PRC_CONSULTA_EMPREGADO(207, EMPLOYEES_RECORD.FIRST_NAME, EMPLOYEES_RECORD.LAST_NAME, EMPLOYEES_RECORD.EMAIL,
                         EMPLOYEES_RECORD.PHONE_NUMBER, EMPLOYEES_RECORD.HIRE_DATE, EMPLOYEES_RECORD.JOB_ID, 
                         EMPLOYEES_RECORD.SALARY, EMPLOYEES_RECORD.COMMISSION_PCT, EMPLOYEES_RECORD.MANAGER_ID, 
                         EMPLOYEES_RECORD.DEPARTMENT_ID);
  DBMS_OUTPUT.PUT_LINE(EMPLOYEES_RECORD.FIRST_NAME || ' ' || 
                       EMPLOYEES_RECORD.LAST_NAME || ' - ' ||
                       EMPLOYEES_RECORD.DEPARTMENT_ID || ' - ' ||
                       EMPLOYEES_RECORD.JOB_ID || ' - ' ||
                       EMPLOYEES_RECORD.PHONE_NUMBER || ' - ' ||
                       LTRIM(TO_CHAR(EMPLOYEES_RECORD.SALARY, 'L99G999G999D99')));
END;


-- UTILIZANDO PARÂMETROS TIPO OUT COM OPÇÃO NOCOPY

CREATE OR REPLACE PROCEDURE PRC_CONSULTA_EMPREGADO
  (
    PEMPLOYEE_ID    IN NUMBER,
    PFIRST_NAME     OUT NOCOPY VARCHAR2,
    PLAST_NAME      OUT NOCOPY VARCHAR2,
    PEMAIL          OUT NOCOPY VARCHAR2,
    PPHONE_NUMBER   OUT NOCOPY VARCHAR2,
    PHIRE_DATE      OUT NOCOPY DATE,
    PJOB_ID         OUT NOCOPY VARCHAR2,
    PSALARY         OUT NOCOPY NUMBER,
    PCOMMISSION_PCT OUT NOCOPY NUMBER,
    PMANAGER_ID     OUT NOCOPY NUMBER,
    PDEPARTMENT_ID  OUT NOCOPY NUMBER
  )
IS
BEGIN
  SELECT
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
  INTO
    PFIRST_NAME,
    PLAST_NAME,
    PEMAIL,
    PPHONE_NUMBER,
    PHIRE_DATE,
    PJOB_ID,
    PSALARY,
    PCOMMISSION_PCT,
    PMANAGER_ID,
    PDEPARTMENT_ID
  FROM EMPLOYEES
  WHERE EMPLOYEE_ID = PEMPLOYEE_ID;

EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RAISE_APPLICATION_ERROR(-20001, 'EMPREGADO NÃO EXISTE: ' || PEMPLOYEE_ID);
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20002, 'ERRO ORACLE ' || SQLCODE || SQLERRM);
END;


-- EXECUTANDO PROCEDURE PARÂMETRO TIPO OUT

SET SERVEROUTPUT ON;
SET VERIFY OFF;
DECLARE 
  EMPLOYEES_RECORD EMPLOYEES%ROWTYPE;
BEGIN
  PRC_CONSULTA_EMPREGADO(207, EMPLOYEES_RECORD.FIRST_NAME, EMPLOYEES_RECORD.LAST_NAME, EMPLOYEES_RECORD.EMAIL,
                         EMPLOYEES_RECORD.PHONE_NUMBER, EMPLOYEES_RECORD.HIRE_DATE, EMPLOYEES_RECORD.JOB_ID, 
                         EMPLOYEES_RECORD.SALARY, EMPLOYEES_RECORD.COMMISSION_PCT, EMPLOYEES_RECORD.MANAGER_ID, 
                         EMPLOYEES_RECORD.DEPARTMENT_ID);
  DBMS_OUTPUT.PUT_LINE(EMPLOYEES_RECORD.FIRST_NAME || ' ' || 
                       EMPLOYEES_RECORD.LAST_NAME || ' - ' ||
                       EMPLOYEES_RECORD.DEPARTMENT_ID || ' - ' ||
                       EMPLOYEES_RECORD.JOB_ID || ' - ' ||
                       EMPLOYEES_RECORD.PHONE_NUMBER || ' - ' ||
                       LTRIM(TO_CHAR(EMPLOYEES_RECORD.SALARY, 'L99G999G999D99')));
END;