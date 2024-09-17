-- Seção 14 - Procedures de Banco de Dados

-- Aula 1 - Criando Procedures de Banco de Dados

-- Criando uma Procedure de Banco de Dados

CREATE OR REPLACE PROCEDURE PRC_INSERE_EMPREGADO
  (
    pFIRST_NAME    IN VARCHAR2,
    pLAST_NAME     IN VARCHAR2,
    pEMAIL         IN VARCHAR2,
    pPHONE_NUMBER  IN VARCHAR2,
    pHIRE_DATE     IN DATE DEFAULT SYSDATE,
    pJOB_ID        IN VARCHAR2,
    pSALARY        IN NUMBER,
    pCOMMISSION_PCT IN NUMBER,
    pMANAGER_ID    IN NUMBER,
    pDEPARTMENT_ID IN NUMBER
  )
IS
  -- Nenhuma variável declarada
BEGIN
  INSERT INTO employees (
    employee_id,
    first_name,
    last_name,
    email,
    phone_number,
    hire_date,
    job_id,
    salary,
    commission_pct,
    manager_id,
    department_id
  )
  VALUES (
    employees_seq.nextval,
    pFIRST_NAME,
    pLAST_NAME,
    pEMAIL,
    pPHONE_NUMBER,
    pHIRE_DATE,
    pJOB_ID,
    pSALARY,
    pCOMMISSION_PCT,
    pMANAGER_ID,
    pDEPARTMENT_ID
  );
EXCEPTION
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20001, 'Erro Oracle ' || SQLCODE || SQLERRM);
END;


-- Executando a Procedure pelo Bloco PL/SQL

BEGIN
  PRC_INSERE_EMPREGADO('David', 'Bowie', 'DBOWIE', '515.127.4861', SYSDATE, 'IT_PROG', 15000, NULL, 103, 60);
  COMMIT;
END;


-- Consultando o empregado inserido

SELECT *
FROM   employees
WHERE  first_name = 'David'
AND    last_name = 'Bowie';

-- Executando a Procedure com o comando EXECUTE do SQL*PLUS

EXEC PRC_INSERE_EMPREGADO('Greg', 'Lake', 'GLAKE', '515.127.4961', SYSDATE, 'IT_PROG', 15000, NULL, 103, 60);

COMMIT;

-- Consultando o empregado inserido

SELECT *
FROM   employees
WHERE  first_name = 'Greg'
AND    last_name = 'Lake';
