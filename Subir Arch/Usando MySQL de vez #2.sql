DROP TABLE pet;

CREATE TABLE pet 
             (nome VARCHAR(20),
             dono VARCHAR(20),
             espécie VARCHAR(20),
             sexo VARCHAR(1),
             nascimento DATE, 
             morte DATE);
             
INSERT INTO pet
            VALUES 
('Max', 'Duda', 'dog', 'm', '2011-03-12', NULL),           
('Fluffy', 'Harold', 'cat', 'f', '1993-02-04', NULL),
('Claws', 'Gwen', 'cat', 'm', '1994-03-17', NULL),
('Buffy', 'Harold', 'dog', 'f', '1989-05-13', NULL),
('Fang', 'Benny', 'dog', 'm', '1990-08-27', NULL),
('Bowser', 'Diane', 'dog', 'm', '1979-08-31', '1995-07-29'),
('Chirpy', 'Gwen', 'bird', 'f', '1998-09-11', NULL),
('Whistler', 'Gwen', 'bird', NULL, '1997-12-09', NULL),
('Slim', 'Benny', 'snake', 'm', '1996-04-29', NULL),
('Puffball', 'Diane', 'hamster', 'f', '1999-03-30', NULL);    

SHOW TABLES;       

UPDATE pet 
SET nascimento = "1989-08-31" WHERE nome = "Bowser";


SELECT 
     nome,
     nascimento,
     morte,
     (YEAR(morte) - YEAR(nascimento)) - (RIGHT(morte,5)<RIGHT(nascimento,5)) Idade
FROM 
    pet
WHERE
     morte IS NOT NULL 
ORDER BY 
      Idade;


SELECT 
     nome,
     nascimento,
     MONTH(nascimento)
FROM 
    pet;
    
SELECT 
     nome,
     nascimento
FROM 
    pet
WHERE
    MONTH(nascimento) = 3;
    
SELECT 
     nome,
     nascimento
FROM 
    pet  
WHERE
    MONTH (nascimento) = MONTH(DATE_ADD(CURDATE(), INTERVAL 1 MONTH)); 
    
SELECT 
     nome,
     nascimento
FROM 
    pet  
WHERE
    MONTH (nascimento) = MOD(MONTH(CURDATE()), 12) + 1;
    
 
SELECT 1 IS NULL, 
       1 IS NOT NULL; 
       
SELECT *
FROM 
    pet
WHERE
     nome 
LIKE  "M%";
  
  
SELECT COUNT(*) 
FROM 
    pet; 
    
SELECT 
     dono, COUNT(*) 
FROM 
    pet 
GROUP BY 
     dono;    
     
SELECT 
	espécie, COUNT(*) 
FROM 
    pet 
GROUP BY 
    espécie;
     
SELECT 
	sexo, COUNT(*) 
FROM 
    pet 
GROUP BY 
    sexo;   
    
SELECT 
	sexo,
    espécie, COUNT(*) 
FROM 
    pet 
GROUP BY 
    sexo,
    espécie; 
    
SELECT 
	sexo,
    espécie, COUNT(*) 
FROM 
    pet 
WHERE
    sexo IS NOT NULL
GROUP BY 
    espécie,
    sexo;