-- Variável Type NUMBER

SET SERVEROUTPUT ON

DECLARE
    VNUMERO NUMBER(11, 2) := 1500.50;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Número = '
        || VNUMERO);
END;
 -- Variável Type CHAR e VARCHAR2
DECLARE
    VCARACTERTAMFIXO     CHAR(2) := 'SP';
    VCARACTERTAMVARIAVEL VARCHAR(100) := 'São Paulo, SP';
BEGIN
    DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Fixo =  '
        || VCARACTERTAMFIXO);
    DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Variavel =  '
        || VCARACTERTAMVARIAVEL);
END;
 -- Variável Type DATE
DECLARE
    VDATA1 DATE := '05/07/23';
    VDATA2 DATE :='05/07/2023';
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data1 = '
        || VDATA1);
    DBMS_OUTPUT.PUT_LINE('Data2 = '
        || VDATA2);
END;