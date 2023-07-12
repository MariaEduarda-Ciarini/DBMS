-- Data Types PL/SQL

SET SERVEROUTPUT ON
DECLARE
    vDatabase VARCHAR2   (40);
BEGIN
    vDatabase := 'Oracle 19c';
DBMS_OUTPUT.PUT_LINE ('Valor da variável vDatabase = ' || vDatabase);
END;


DECLARE 
    vNumber          NUMBER (11, 2) := 2350.90;
    vCharactersFix   CHAR   (100) := 'Texto de Tamanho Fixo de até 32767 bytes';
    vCharactersVari  VARCHAR(100) := 'Texto Tamanho Variável de até 32767 bytes';
    vBooleano        BOOLEAN := TRUE;
    vData            DATE := SYSDATE;
    vLong            LONG := 'Texto Tamanho Variável de até 32760 bytes';
    vRowid           ROWID;
    vTimestamp       TIMESTAMP := SYSTIMESTAMP;
    vTimestamptz     TIMESTAMP WITH TIME ZONE := SYSTIMESTAMP;
    vCharactersFixUniversal  NCHAR(100) := 'Texto de Tamanho Fixo Universal de até 32767 bytes';
    vCharactersVariUniversal NVARCHAR2(100) := 'Texto de Tamanho Variável  Universal de até 32767 bytes';
    vNumeroInt       BINARY_INTEGER := 1200;
    vNumeroFloat     BINARY_FLOAT := 1500000;
    vNumeroDouble    BINARY_DOUBLE := 1500000;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Numero = '||  vNumber); 
    DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Fixo = ' ||      vCharactersFix);
    DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Variável = ' || vCharactersVari);
IF vBooleano = TRUE
THEN
    DBMS_OUTPUT.PUT_LINE('Booleano = ' || 'TRUE');
ELSE 
    DBMS_OUTPUT.PUT_LINE('Booleano = ' || 'FALSE OR NULL');
END IF;
    DBMS_OUTPUT.PUT_LINE('Data = ' || vData);
    DBMS_OUTPUT.PUT_LINE('Long = ' || vLong);
SELECT ROWID
INTO vRowid
FROM EMPLOYEES
WHERE 
    FIRST_NAME = 'TRAVIS' AND 
    LAST_NAME = 'SCOTT';
    DBMS_OUTPUT.PUT_LINE('Rowid = ' || vRowid);
    DBMS_OUTPUT.PUT_LINE('Timestamp = ' || vTimestamp);
    DBMS_OUTPUT.PUT_LINE('Timestamp with zone = ' || vTimestamptz);
    DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Fixo = ' || vCharactersFixUniversal);
    DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Variável = ' || vCharactersVariUniversal);
    DBMS_OUTPUT.PUT_LINE('Numero Inteiro = ' || vNumeroInt);
    DBMS_OUTPUT.PUT_LINE('Numero Float = ' || vNumeroFloat);
    DBMS_OUTPUT.PUT_LINE('Numero Double = ' || vNumeroDouble);
END;
    
    
    
    

     