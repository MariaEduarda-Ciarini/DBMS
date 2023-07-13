-- Declaração de Identificadores 

-- Variável Bind

SET SERVEROUTPUT ON

VARIABLE GMEDIA NUMBER

DECLARE
    VNUMERO1 NUMBER(11, 2) := 2430;
    VNUMERO2 NUMBER(11, 2) := 7500;
BEGIN
    :GMEDIA := (VNUMERO1 + VNUMERO2) / 2;
    DBMS_OUTPUT.PUT_LINE(' Média = '
        || TO_CHAR(:GMEDIA));
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Erro Oracle:'
            || SQLCODE
            || SQLERRM);
END;