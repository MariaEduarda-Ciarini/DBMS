-- Sintaxe e Diretrizes de um Bloco PL/SQL

SET SERVEROUTPUT ON

DECLARE
    VNUMERO1 NUMBER (13, 2); --  Declaração de variável para o Primero número
    VNUMERO2 NUMBER (13, 2); --  Declaração de variável para o Segundo número
    VMEDIA   NUMBER (13, 2); --  Declaração de variavél para receber a Media calculada
BEGIN
 /* Calculo do valor da média entre dois Números
   Autor: Dudinha
   Data: 14/07/23 */
    VNUMERO1 := 9034;
    VNUMERO2 := 5E3;
    VMEDIA := (VNUMERO1 + VNUMERO2) / 2; -- Calculo da Média entre os dois números
    DBMS_OUTPUT.PUT_LINE('vnumero1 = '
        || VNUMERO1); -- Impressão do Primeiro Número
    DBMS_OUTPUT.PUT_LINE('vnumero2 = '
        || VNUMERO2); -- Impressão do Segundo Número
    DBMS_OUTPUT.PUT_LINE('Média = '
        || VMEDIA); -- Impressão da Média Calculada
END;