-- Aula Oracle PL/SQL - Operadores PL/SQL e Regra de precedência

-- + (Soma)
-- - (Subtração)
-- * (Multiplicação)
-- / (Divisão)
-- ** (Exponenciação)
-- NOT (Negação Lógica)
-- =, <,>,<=,
--  MOD (Resto da divisão)
-- = (Igual a)
-- != or <> (Diferente de)
-- < (Menor que)
-- > (Maior que)
-- <= (Menor ou igual a)
-- >= (Maior ou igual a)
-- IS NULL (É nulo)
-- LIKE (Semelhante a um padrão especificado)
-- BETWEEN (Entre um intervalo)
-- IN (Presente em uma lista)

-- Regra de precedência da (esquerda para direita) 

-- ( ) (parênteses)
-- ** (exponenciação)
-- + - (operadores unários)
-- * /
-- + - || (operadores binários)
-- = != <> < > <= >=
-- NOT
-- AND
-- OR

SET SERVEROUTPUT ON 

DECLARE
    vNota1 NUMBER(11,2) := 7.0;
    vNota2 NUMBER(11,2) := 6.0;
    vNota3 NUMBER(11,2) := 9.0; 
    vNota4 NUMBER(11,2) := 6.0; 
    vMedia NUMBER(11,2);
BEGIN
   vMedia := vNota1 +  vNota2 + vNota3 + vNota4 / 4;
   DBMS_OUTPUT.PUT_LINE('Media = ' || 
   vMedia);
END;

-- Deu 23.5 a errada.
-- Corrigindo o cálculo da média, sobrepondo a regra de precedência utilizando parenteses 

DECLARE
    vNota1 NUMBER(11,2) := 7.0;
    vNota2 NUMBER(11,2) := 6.0;
    vNota3 NUMBER(11,2) := 9.0; 
    vNota4 NUMBER(11,2) := 6.0; 
    vMedia NUMBER(11,2);
BEGIN
   vMedia := (vNota1 +  vNota2 + vNota3 + vNota4) / 4;
   DBMS_OUTPUT.PUT_LINE('Media = ' || 
   vMedia);
END;
/

-- Resultado = 7