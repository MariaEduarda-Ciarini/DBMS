-- Definindo Identificadores - Constantes
-- Constante (Não pode ter o valor alterado).

SET SERVEROUTPUT ON

DECLARE
    vPi    CONSTANT NUMBER(38, 12) := 3.141592653589793;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Pi = ' || vPi);
    vPi := 3.14159;
    DBMS_OUTPUT.PUT_LINE('Pi = ' || vPi);
END;

-- Causando erro de proposito. Acima

-- Sem Constante
DECLARE
    vPi     NUMBER(38, 12) := 3.141592653589793;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Pi = ' || vPi);
    vPi := 3.14159;
    DBMS_OUTPUT.PUT_LINE('Pi = ' || vPi);
END;


-- Declarando Constante Type CHAR e VARCHAR2
DECLARE
    vCaracterTamFixo     CONSTANT CHAR(2) := 'SP';
    vCaracterTamVariavel CONSTANT VARCHAR(100) := 'São Paulo, SP';
BEGIN
    DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Fixo = ' || vCaracterTamFixo);
    DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Variavel = ' || vCaracterTamVariavel);
END;