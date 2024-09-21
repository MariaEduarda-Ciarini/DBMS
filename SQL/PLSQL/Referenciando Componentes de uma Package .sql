--
-- Seção 19 - Criando Packages de Banco de Dados
--
-- Aula 4 - Referenciando Componentes de uma Package 
--

-- Referenciando Componentes de uma Package 

BEGIN
  PCK_EMPREGADOS.PRC_INSERE_EMPREGADO('BOB', 'MARLEY','BMARLY','515.258.4861',SYSDATE,'IT_PROG',43000,NULL,103,60);
  COMMIT;
END;

BEGIN
  PCK_EMPREGADOS.PRC_INSERE_EMPREGADO('Klhoe', 'Kardashian','KLHOEK','515.244.4861',SYSDATE,'IT_PROG',15000,NULL,103,60);
  COMMIT;
END;