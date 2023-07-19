-- Blocos Aninhados e Escopo de Identificadores (variáveis e constantes)


SET SERVEROUTPUT ON

DECLARE
    vBloco1 VARCHAR2(20) := 'Bloco 1';
BEGIN
    DBMS_OUTPUT.PUT_LINE('Refereciando variável do Bloco 1: ' 
    || vBloco1);
DECLARE
    vBloco3 VARCHAR2(20) := 'Bloco 3';
BEGIN
    DBMS_OUTPUT.PUT_LINE('Refereciando variável do Bloco 1: ' 
    || vBloco1);
    DBMS_OUTPUT.PUT_LINE('Refereciando variável do Bloco 3: ' 
    || vBloco3);
END;
    DBMS_OUTPUT.PUT_LINE('Refereciando variável do Bloco 1: ' 
    || vBloco1);
    -- Se voce referencia vbloco 2 aqui ocorrera Error
END;


-- Identifcando Blocos através de Labels

<<BLOCO1>>
DECLARE
    vBloco1 VARCHAR2(20) := 'Bloco 1';
BEGIN
    DBMS_OUTPUT.PUT_LINE('Refereciando variável do Bloco 1: ' 
    || bloco1.vBloco1);
<<BLOCO2>>
DECLARE
    vBloco2 VARCHAR2(20) := 'Bloco 2';
BEGIN
     DBMS_OUTPUT.PUT_LINE('Refereciando variável do Bloco 1: ' 
    || bloco1.vBloco1);
     DBMS_OUTPUT.PUT_LINE('Refereciando variável do Bloco 1: ' 
    || bloco2.vBloco2);
END;
     DBMS_OUTPUT.PUT_LINE('Refereciando variável do Bloco 1: ' 
    || bloco1.vBloco1);
END;