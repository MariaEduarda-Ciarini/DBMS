SELECT 
    EMPLOYEE_ID, 
    JOB_ID, 
    HIRE_DATE, 
    SALARY
FROM    
    EMPLOYEES
WHERE 
    DEPARTMENT_ID  
IN (60, 90, 100)
UNION 
SELECT 
     EMPLOYEE_ID, 
     JOB_ID, 
     HIRE_DATE, 
     SALARY
FROM    
    EMPLOYEES
WHERE 
    JOB_ID = 'IT_PROG'
ORDER BY 
    EMPLOYEE_ID;
    
    
SELECT 
      employee_id, 
      job_id, 
      hire_date, 
      salary
FROM   
     employees
WHERE  
   job_id = 'IT_PROG'
UNION ALL
SELECT 
      employee_id, 
      job_id, 
      hire_date, 
      salary
FROM   
     employees
WHERE  
     department_id = 60
ORDER BY 
    employee_id;    
    
    
SELECT 
      EMPLOYEE_ID, 
      JOB_ID
FROM   
    EMPLOYEES
WHERE 
    JOB_ID = 'IT_PROG'
INTERSECT
SELECT 
      EMPLOYEE_ID, 
      JOB_ID
FROM    
   EMPLOYEES
WHERE 
    DEPARTMENT_ID 
    IN (60, 90, 100)
ORDER BY 
    EMPLOYEE_ID;  
    
    
SELECT 
      EMPLOYEE_ID, 
      JOB_ID
FROM   
     EMPLOYEES
WHERE  
     DEPARTMENT_ID 
IN (60, 90, 100)
MINUS
SELECT 
      EMPLOYEE_ID, 
      JOB_ID
FROM   
    EMPLOYEES
WHERE  
    JOB_ID = 'IT_PROG'
ORDER BY 
   EMPLOYEE_ID;    
