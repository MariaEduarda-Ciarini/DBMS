-- Loop Basic

SET SERVEROUTPUT ON

ACCEPT pLimit PROMPT 'Enter the limit value: '
DECLARE 
    vNumber NUMBER(38) := 1;
    vLimit  NUMBER(38) := &pLimit;
BEGIN

-- Printing numbers from 1 to the limit

LOOP 
    DBMS_OUTPUT.PUT_LINE('Number = ' || to_char(vNumber));
    EXIT WHEN vNumber = vLimit;
    vNumber := vNumber + 1;
END LOOP;
END;
/
