-- Collections - Varray

SET SERVEROUTPUT ON
SET VERIFY OFF

DECLARE TYPE
    NUMBER_TABLE_TYPE IS VARRAY (10)OF INTEGER(2);
    NUMBER_TABLE NUMBER_TABLE_TYPE := NUMBER_TABLE_TYPE(); 
BEGIN
    -- Armazena números de 1 a 0 em um Varray
    FOR I IN 1..10
    LOOP
        NUMBER_TABLE.EXTEND;
        NUMBER_TABLE(I) := I;
    END LOOP;
    -- Lê o Varray e imprime os números armazenados
    FOR I IN 1..10
    LOOP
        DBMS_OUTPUT.PUT_LINE('Varray: Indice = ' || TO_CHAR(I) || ', Valor = ' || TO_CHAR(NUMBER_TABLE(I)));
    END LOOP;
END;