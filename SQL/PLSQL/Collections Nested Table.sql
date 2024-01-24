-- Collections - Nested Table
SET SERVEROUTPUT ON
SET VERIFY OFF
DECLARE TYPE NUMBER_TABLE_TYPE IS TABLE OF INTEGER(2);
NUMBER_TABLE NUMBER_TABLE_TYPE := NUMBER_TABLE_TYPE();
BEGIN -- Armazena números de 1 a 0 em um Associative Array
FOR I IN 1..10 LOOP NUMBER_TABLE.EXTEND;
NUMBER_TABLE(I) := I;
END LOOP;
-- Lê o Nested Table e imprime os números armazenados
FOR I IN 1..10 LOOP DBMS_OUTPUT.PUT_LINE(
    'Nested Table: Indice = ' || TO_CHAR(I) || ', Valor = ' || TO_CHAR(NUMBER_TABLE(I))
);
END LOOP;
END;