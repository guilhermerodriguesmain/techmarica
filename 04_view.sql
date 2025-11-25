-- prova P2
/*   ---TechMarica---   */

-- ### VIEW ### --

USE techmarica;

SHOW TABLES;
DESC produtos;
DESC funcionarios;
DESC mauinas;
DESC ordens_producao;

-- view útil para o gestor (RESUMO DA PRODUÇÃO)

DROP VIEW IF EXISTS vw_producao_resumo;

CREATE VIEW vw_producao_resumo AS 
SELECT op.id,
       p.sku,
       p.nome AS Produto,
       f.nome AS Responsavel_tecnico,
       m.nome AS Maquina,
       op.data_inicio,
       op.data_fim,
       op.status
FROM ordens_producao op
JOIN produtos p ON p.id = op.id_produto
JOIN funcionarios f ON f.id = op.id_funcionario
JOIN maquinas m ON m.id = op.id_maquina;

-- EXEMPLO DE USO
SELECT * FROM vw_producao_resumo;