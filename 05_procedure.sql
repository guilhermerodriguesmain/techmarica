-- prova P2
/*   ---TechMarica---   */

-- ### PROCEDURE ### --

USE techmarica;

SHOW TABLES;
DESC produtos;
DESC funcionarios;
DESC mauinas;
DESC ordens_producao;

DELIMITER $$

-- util  para o gestor registrar ordem de produção mais facilmente

DROP PROCEDURE IF EXISTS registrar_ordem$$

CREATE PROCEDURE registrar_ordem(
  IN p_produto INT,
  IN p_funcionario INT,
  IN p_maquina INT
)
BEGIN
  INSERT INTO ordens_producao (id_produto, id_funcionario, id_maquina, data_inicio, status)
  VALUES (p_produto, p_funcionario, p_maquina, NOW(), 'EM PRODUÇÃO');

  SELECT CONCAT('Ordem registrada com id=', LAST_INSERT_ID()) AS mensagem;
END$$


DELIMITER ;


-- Exemplo de uso:
-- parametros : id do produto, id do funcionario(responsavel tecnico), id da maquina 
CALL registrar_ordem(1,2,1);
-- retorna id da ordem registrada que pode ser consultada abaixo

select * from ordens_producao
where id = 0; -- substituir id 0 pelo id retornado no registro da procedure