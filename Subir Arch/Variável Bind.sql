-- Declaração de Identificadores 

-- Variável Bind

SET SERVEROUTPUT ON
VARIABLE gmedia NUMBER
DECLARE
    vnumero1 NUMBER(11, 2) := 2430;
    vnumero2 NUMBER(11, 2) := 7500;
BEGIN
    :gmedia := (vnumero1 + vnumero2) / 2;
    DBMS_OUTPUT.PUT_LINE(' Média = '
    || TO_CHAR(:gmedia));
EXCEPTION
    WHEN OTHERS
      THEN
       DBMS_OUTPUT.PUT_LINE('Erro Oracle:' 
       || SQLCODE
       || SQLERRM);
END;