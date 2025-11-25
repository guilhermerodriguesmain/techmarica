-- prova P2
/*   ---TechMarica---   */

-- ### SELECTS ### --

USE techmarica;

SHOW TABLES;
DESC produtos;
DESC funcionarios;
DESC maquinas;
DESC ordens_producao;

-- A: Listagem completa das ordens (produto, maquina, funcionario, datas, status)
SELECT op.id,
       p.sku,
       p.nome AS produto,
       m.nome AS maquina,
       f.nome AS funcionario,
       op.data_inicio,
       op.data_fim,
       op.status
FROM ordens_producao op 
JOIN produtos p ON op.id_produto = p.id
JOIN maquinas m ON op.id_maquina = m.id
JOIN funcionarios f ON op.id_funcionario = f.id
ORDER BY op.data_inicio DESC;

-- B: Filtrar funcionarios inativos
SELECT id, nome, area FROM funcionarios WHERE ativo = 0;

-- C: Contagem total de produtos por responsavel tecnico
SELECT responsavel_tecnico, COUNT(*) AS total_produtos
FROM produtos
GROUP BY responsavel_tecnico
ORDER BY total_produtos DESC;

-- D: Seleção de produtos cujo nome começa com 'P' 
SELECT id, nome FROM produtos WHERE nome LIKE 'P%';

-- E: Idade do produto em anos desde data_criacao
SELECT id, nome, TIMESTAMPDIFF(YEAR, data_criacao, CURDATE()) AS "idade em anos"  -- timestampdiff calcula diferença entre data inicial e data final
FROM produtos;

-- F: Consulta simples por ordem (produto + funcionario) — JOIN em 2 tabelas
SELECT op.id, p.nome AS produto, f.nome AS funcionario, op.status
FROM ordens_producao op
JOIN produtos p ON op.id_produto = p.id
JOIN funcionarios f ON op.id_funcionario = f.id
ORDER BY op.id;
