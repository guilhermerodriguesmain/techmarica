-- prova P2
/*   ---TechMarica---   */

-- ### VIEW ### --

USE techmarica;

SHOW TABLES;
DESC produtos;
DESC funcionarios;
DESC mauinas;
DESC ordens_producao;


DROP VIEW IF EXISTS vw_producao_consolidada;
CREATE VIEW vw_producao_consolidada AS
SELECT
  op.id,
  p.sku,
  p.nome AS produto,
  p.responsavel_tecnico,
  f.nome AS funcionario,
  m.nome AS maquina,
  op.data_inicio,
  op.data_fim,
  op.status
FROM ordens_producao op
JOIN produtos p ON p.id = op.id_produto
JOIN funcionarios f ON f.id = op.id_funcionario
JOIN maquinas m ON m.id = op.id_maquina;

SELECT * FROM vw_producao_consolidada;