-- Blocos Aninhados e Escopo de Identificadores (variáveis e constantes)
SET SERVEROUTPUT ON
DECLARE VBLOCO1 VARCHAR2(20) := 'Bloco 1';
BEGIN DBMS_OUTPUT.PUT_LINE(
    'Refereciando variável do Bloco 1: ' || VBLOCO1
);
DECLARE VBLOCO3 VARCHAR2(20) := 'Bloco 3';
BEGIN DBMS_OUTPUT.PUT_LINE(
    'Refereciando variável do Bloco 1: ' || VBLOCO1
);
DBMS_OUTPUT.PUT_LINE(
    'Refereciando variável do Bloco 3: ' || VBLOCO3
);
END;
DBMS_OUTPUT.PUT_LINE(
    'Refereciando variável do Bloco 1: ' || VBLOCO1
);
-- Se voce referencia vbloco 2 aqui ocorrera Error
END;
-- Identifcando Blocos através de Labels
<< BLOCO1 >>
DECLARE VBLOCO1 VARCHAR2(20) := 'Bloco 1';
BEGIN DBMS_OUTPUT.PUT_LINE(
    'Refereciando variável do Bloco 1: ' || BLOCO1.VBLOCO1
);
<< BLOCO2 >>
DECLARE VBLOCO2 VARCHAR2(20) := 'Bloco 2';
BEGIN DBMS_OUTPUT.PUT_LINE(
    'Refereciando variável do Bloco 1: ' || BLOCO1.VBLOCO1
);
DBMS_OUTPUT.PUT_LINE(
    'Refereciando variável do Bloco 1: ' || BLOCO2.VBLOCO2
);
END;
DBMS_OUTPUT.PUT_LINE(
    'Refereciando variável do Bloco 1: ' || BLOCO1.VBLOCO1
);
END;