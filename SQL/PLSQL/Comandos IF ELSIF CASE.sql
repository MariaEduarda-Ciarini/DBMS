-- Aula Oracle PL/SQL - Utilizando o comando IF
SET SERVEROUTPUT ON

ACCEPT pdepartment_id PROMPT 'Digite o ID do departamento: '
DECLARE
    vPERCENTUAL     NUMBER(3);
    vDEPARTMENT_ID  EMPLOYEES.EMPLOYEE_ID%TYPE := &pdepartment_id;
BEGIN
    IF 
    vDEPARTMENT_ID = 80
    THEN 
    vPERCENTUAL := 10; -- Sales
    ELSE
    IF 
    vDEPARTMENT_ID = 20
    THEN
    vPERCENTUAL := 15; -- Marketing
    ELSE
    IF 
    vDEPARTMENT_ID = 60
    THEN 
     vPERCENTUAL := 20; -- IT
    ELSE
    vPERCENTUAL := 5;
    END IF;
    END IF;
    END IF;
            
    DBMS_OUTPUT.PUT_LINE('ID do Departamento: '  
    || vDEPARTMENT_ID);   
    DBMS_OUTPUT.PUT_LINE('Percentual: '  
    || vPERCENTUAL); 
    
    UPDATE EMPLOYEES
    SET SALARY = SALARY * (1 + vPERCENTUAL / 100)
    WHERE DEPARTMENT_ID = vDEPARTMENT_ID;
    COMMIT;
END;

SELECT * FROM EMPLOYEES
WHERE DEPARTMENT_ID = 60


-- Comando IF  com ELSIF

ACCEPT 
    pdepartment_id PROMPT 'Digite o ID do Departamento: '
DECLARE 
    vPERCENTUAL  NUMBER(3);
    vDEPARTMENT_ID employees.employee_id%type := &pdepartment_id;
BEGIN
    IF
    vDEPARTMENT_ID = 80
    THEN
    vPERCENTUAL := 10; -- Sales
    ELSIF
    vDEPARTMENT_ID = 20
    THEN
    vPERCENTUAL := 15; -- Marketing
    ELSIF 
    vDEPARTMENT_ID =  60 
    THEN 
    vPERCENTUAL := 20; -- IT
    ELSE
    vPERCENTUAL := 5;
    END IF;
   
    DBMS_OUTPUT.PUT_LINE('ID do Departamento: '  
    || vDEPARTMENT_ID);   
    DBMS_OUTPUT.PUT_LINE('Percentual: '  
    || vPERCENTUAL); 
    
    UPDATE EMPLOYEES
    SET  SALARY = SALARY * (1 + vPERCENTUAL / 100)
    WHERE DEPARTMENT_ID = vDEPARTMENT_ID;
    COMMIT;
END;
    
SELECT * FROM EMPLOYEES
WHERE DEPARTMENT_ID = 80 


-- Utilizando o comando CASE

ACCEPT pdepartment_id  PROMPT 'Digite o ID do Departamento: '
DECLARE
    vPERCENTUAL NUMBER(3);
    vDEPARTMENT_ID EMPLOYEES.EMPLOYEE_ID%TYPE := &pdepartment_id;
BEGIN
    CASE 
        vDEPARTMENT_ID
    WHEN 80
    THEN
        vPERCENTUAL := 10; -- Sales
    WHEN 20
    THEN
        vPERCENTUAL  := 15; -- Marketing
    WHEN  60
    THEN 
        vPERCENTUAL := 20; -- IT
    ELSE
        vPERCENTUAL := 5;
    END CASE;

    DBMS_OUTPUT.PUT_LINE('ID do Departamento: '  
    || vDEPARTMENT_ID);   
    DBMS_OUTPUT.PUT_LINE('Percentual: '  
    || vPERCENTUAL);

    UPDATE   EMPLOYEES
    SET      SALARY = SALARY * (1 + vPERCENTUAL / 100)
    WHERE    DEPARTMENT_ID = vDEPARTMENT_ID;
    COMMIT;
END;
/

SELECT * FROM EMPLOYEES
WHERE DEPARTMENT_ID = 80