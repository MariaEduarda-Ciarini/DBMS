-- Seção 14 - Procedures de Banco de Dados

-- Aula 2 - Utilizando Parâmetros tipo IN

-- Utilizando Parâmetros tipo IN

CREATE OR REPLACE PROCEDURE PRC_AUMENTA_SALARIO_EMPREGADO
  (
    pEMPLOYEE_ID   IN NUMBER,
    pPERCENTUAL    IN NUMBER
  )
IS
  -- Nenhuma variável declarada
BEGIN
  UPDATE employees 
  SET salary = salary * (1 + pPERCENTUAL / 100)
  WHERE employee_id = pEMPLOYEE_ID;

EXCEPTION
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20001, 'Erro Oracle: ' || SQLCODE || ' - ' || SQLERRM);
END;


-- Executando a Procedure pelo Bloco PL/SQL

BEGIN
  PRC_AUMENTA_SALARIO_EMPREGADO(109, 10);
  COMMIT;
END;

