-- Colletions - Associative Array

SET SERVEROUTPUT ON 
SET VERIFY OFF

DECLARE
    TYPE NUMBER_TABLE_TYPE IS TABLE OF NUMBER(2)
    INDEX BY BINARY_INTEGER;  
    NUMBER_TABLE           NUMBER_TABLE_TYPE;
BEGIN

-- Armazena números de 1 a 10 em um Associative Array
    FOR I IN 1..10
    LOOP
        NUMBER_TABLE(I) := I;
    END LOOP;
    
    -- Lê o Associative Array e imprime os números armazenados
    FOR I IN 1..10
    LOOP
        DBMS_OUTPUT.PUT_LINE('Associative Array: Indice = ' || TO_CHAR(I) || ', VALOR = ' || TO_CHAR(NUMBER_TABLE(I)));
    END LOOP;
END;
