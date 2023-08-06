-- Definindo Identificadores - Constantes
-- Constante (Não pode ter o valor alterado).

SET SERVEROUTPUT ON
DECLARE VPI CONSTANT NUMBER(38, 12) := 3.141592653589793;
BEGIN DBMS_OUTPUT.PUT_LINE('Pi = ' || VPI);
VPI := 3.14159;
DBMS_OUTPUT.PUT_LINE('Pi = ' || VPI);
END;
-- Causando erro de proposito. Acima
-- Sem Constante
DECLARE VPI NUMBER(38, 12) := 3.141592653589793;
BEGIN DBMS_OUTPUT.PUT_LINE('Pi = ' || VPI);
VPI := 3.14159;
DBMS_OUTPUT.PUT_LINE('Pi = ' || VPI);
END;
-- Declarando Constante Type CHAR e VARCHAR2
DECLARE VCARACTERTAMFIXO CONSTANT CHAR(2) := 'SP';
VCARACTERTAMVARIAVEL CONSTANT VARCHAR(100) := 'São Paulo, SP';
BEGIN DBMS_OUTPUT.PUT_LINE(
    'String Caracteres Tam Fixo = ' || VCARACTERTAMFIXO
);
DBMS_OUTPUT.PUT_LINE(
    'String Caracteres Tam Variavel = ' || VCARACTERTAMVARIAVEL
);
END;