-- Bloco Anônimo 
SET SERVEROUTPUT ON

DECLARE
    vTexto   VARCHAR2(100) := 'Seja bem vindos ao Procedural Language/SQL';
BEGIN
    DBMS_OUTPUT.PUT_LINE(vTexto);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Erro Oracle: ' || SQLCODE || ' ' || SQLERRM);
END;

DECLARE
    vNumero1 NUMBER(11, 2) := 500;
    vNumero2 NUMBER(11, 2) := 450;
    vMedia   NUMBER (11, 2);
BEGIN
    vMedia := (vNumero1  + vNumero2) / 2;
    DBMS_OUTPUT.PUT_LINE('Media = ' || vMedia);
END;
