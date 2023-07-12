-- Data Types PL/SQL

SET SERVEROUTPUT ON

DECLARE
    VDATABASE VARCHAR2 (40);
BEGIN
    VDATABASE := 'Oracle 19c';
    DBMS_OUTPUT.PUT_LINE ('Valor da variável vDatabase = '
        || VDATABASE);
END;
DECLARE
    VNUMBER                  NUMBER (11, 2) := 2350.90;
    VCHARACTERSFIX           CHAR (100) := 'Texto de Tamanho Fixo de até 32767 bytes';
    VCHARACTERSVARI          VARCHAR(100) := 'Texto Tamanho Variável de até 32767 bytes';
    VBOOLEANO                BOOLEAN := TRUE;
    VDATA                    DATE := SYSDATE;
    VLONG                    LONG := 'Texto Tamanho Variável de até 32760 bytes';
    VROWID                   ROWID;
    VTIMESTAMP               TIMESTAMP := SYSTIMESTAMP;
    VTIMESTAMPTZ             TIMESTAMP WITH TIME ZONE := SYSTIMESTAMP;
    VCHARACTERSFIXUNIVERSAL  NCHAR(100) := 'Texto de Tamanho Fixo Universal de até 32767 bytes';
    VCHARACTERSVARIUNIVERSAL NVARCHAR2(100) := 'Texto de Tamanho Variável  Universal de até 32767 bytes';
    VNUMEROINT               BINARY_INTEGER := 1200;
    VNUMEROFLOAT             BINARY_FLOAT := 1500000;
    VNUMERODOUBLE            BINARY_DOUBLE := 1500000;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Numero = '
        || VNUMBER);
    DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Fixo = '
        || VCHARACTERSFIX);
    DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Variável = '
        || VCHARACTERSVARI);
    IF VBOOLEANO = TRUE THEN
        DBMS_OUTPUT.PUT_LINE('Booleano = '
            || 'TRUE');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Booleano = '
            || 'FALSE OR NULL');
    END IF;
    DBMS_OUTPUT.PUT_LINE('Data = '
        || VDATA);
    DBMS_OUTPUT.PUT_LINE('Long = '
        || VLONG);
    SELECT
        ROWID INTO VROWID
    FROM
        EMPLOYEES
    WHERE
        FIRST_NAME = 'TRAVIS'
        AND LAST_NAME = 'SCOTT';
    DBMS_OUTPUT.PUT_LINE('Rowid = '
        || VROWID);
    DBMS_OUTPUT.PUT_LINE('Timestamp = '
        || VTIMESTAMP);
    DBMS_OUTPUT.PUT_LINE('Timestamp with zone = '
        || VTIMESTAMPTZ);
    DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Fixo = '
        || VCHARACTERSFIXUNIVERSAL);
    DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Variável = '
        || VCHARACTERSVARIUNIVERSAL);
    DBMS_OUTPUT.PUT_LINE('Numero Inteiro = '
        || VNUMEROINT);
    DBMS_OUTPUT.PUT_LINE('Numero Float = '
        || VNUMEROFLOAT);
    DBMS_OUTPUT.PUT_LINE('Numero Double = '
        || VNUMERODOUBLE);
END;