-- prova P2
/*   ---TechMarica---   */

-- ### TRIGGER ### --

USE techmarica;

SHOW TABLES;
DESC produtos;
DESC funcionarios;
DESC mauinas;
DESC ordens_producao;

-- trigger para alterar status quando data_fim for preenchida

DROP TRIGGER IF EXISTS trg_ordem_finaliza;

DELIMITER $$
CREATE TRIGGER trg_ordem_finaliza
BEFORE UPDATE ON ordens_producao
FOR EACH ROW
BEGIN
  IF NEW.data_fim IS NOT NULL AND OLD.data_fim IS NULL THEN
    SET NEW.status = 'FINALIZADA';
  END IF;
END$$
DELIMITER ;

-- EXEMPLO DE USO 

-- verificar id com status 'em producao' e por consequancia data_fim null
SELECT id, data_inicio, status, data_fim from ordens_producao
WHERE status LIKE "EM PRODUÇÃO";

-- ativar o trigger: adiciona uma data fim
UPDATE ordens_producao SET data_fim = NOW() 
WHERE id = 0; -- substituir id 0 pelo id retornado na consulta acima

-- verificar se o trigger funcionou 
SELECT id, data_fim, status FROM ordens_producao 
WHERE id = 0; -- substituir id 0 pelo id retornado na consulta acima
