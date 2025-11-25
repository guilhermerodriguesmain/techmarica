-- prova P2
/*   ---TechMarica---   */

-- ### SELECTS ### --

USE techmarica;

SHOW TABLES;
DESC produtos;
DESC funcionarios;
DESC maquinas;
DESC ordens_producao;

SELECT op.id,
       p.sku,
       p.nome AS produto,
       f.nome AS funcionario,
       m.nome AS maquina,
       op.data_inicio,
       op.data_fim,
       op.status
FROM ordens_producao op
JOIN produtos p ON p.id = op.id_produto
JOIN funcionarios f ON f.id = op.id_funcionario
JOIN maquinas m ON m.id = op.id_maquina
ORDER BY op.data_inicio DESC;

-- Filtrar funcionários inativos
SELECT * FROM funcionarios WHERE ativo = 0;

-- Contagem total de produtos por responsavel tecnico
SELECT responsavel_tecnico, COUNT(*) AS total_produtos
FROM produtos
GROUP BY responsavel_tecnico
ORDER BY total_produtos DESC;

-- Seleção produtos cujo nome começa com 'P'
SELECT * FROM produtos WHERE nome_comercial LIKE 'P%';

-- Calcular idade do produto (anos desde data_criacao) --- EXCLUIR, NÃO ENSINADO EM AULA
SELECT id, nome,
       TIMESTAMPDIFF(YEAR, data_criacao, CURDATE()) AS idade_anos
FROM produtos;

 