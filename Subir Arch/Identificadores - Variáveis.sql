-- Variável Type NUMBER

SET SERVEROUTPUT ON
DECLARE
    vNumero    NUMBER(11,  2) :=  1500.50;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Número = ' ||  vNumero);
END;

-- Variável Type CHAR e VARCHAR2

DECLARE
    vCaracterTamFixo          CHAR(2) := 'SP';
    vCaracterTamVariavel    VARCHAR(100) := 'São Paulo, SP';
BEGIN
    DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Fixo =  '  ||  vCaracterTamFixo);
    DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Variavel =  '  || vCaracterTamVariavel);
END;

-- Variável Type DATE

DECLARE
    vData1      DATE := '05/07/23';
    vData2      DATE :='05/07/2023';
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data1 = ' || vData1);
    DBMS_OUTPUT.PUT_LINE('Data2 = ' || vData2);
END;