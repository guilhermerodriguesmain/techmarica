-- prova P2
/*   ---TechMarica---   */

-- ### DML ### --

USE techmarica;
SHOW TABLES;

-- Inserir 5 produtos 
DESC produtos;
INSERT INTO produtos (sku, nome, responsavel_tecnico, custo, data_criacao) VALUES
('P-001','Sensor Térmico X','Carlos Souza', 12.50, '2021-03-10'),
('P-002','Placa Controladora Z','Mariana Silva', 45.00, '2020-08-01'),
('P-003','Módulo WiFi M1','André Costa', 18.75, '2022-01-20'),
('P-004','Fonte Compacta F9','Mariana Silva', 9.90, '2019-11-05'),
('P-005','Painel LCD 7"','Lucia Almeida', 78.30, '2023-06-15');

-- Inserir 5 funcionários
DESC funcionarios;
INSERT INTO funcionarios (nome, area, ativo, data_admissao) VALUES
('Carlos Souza','Desenvolvimento',1,'2018-02-01'),
('Mariana Silva','Produção',1,'2019-05-10'),
('André Costa','Manutenção',1,'2020-10-20'),
('Lucia Almeida','Qualidade',0,'2016-07-15'), -- inativa
('Pedro Gomes','Produção',1,'2022-04-01');

-- Inserir 3 máquinas
DESC maquinas;
INSERT INTO maquinas (nome, tipo, capacidade, ativo) VALUES
('Linha A - SMT','SMT', 1000, 1),
('Linha B - Inserção','Through-hole', 500, 1),
('Forno Reflow 1','Reflow', 200, 1);

-- Inserir ordens de produção 
DESC ordens_producao;
INSERT INTO ordens_producao (id_produto, id_funcionario, id_maquina, data_inicio, data_fim, status) VALUES
(1, 2, 1, '2024-09-01 08:00:00', '2024-09-01 16:00:00', 'FINALIZADA'),
(2, 2, 1, '2024-09-05 07:30:00', NULL, 'EM PRODUÇÃO'),
(3, 3, 2, '2024-09-03 09:00:00', '2024-09-03 17:00:00', 'FINALIZADA'),
(4, 5, 3, '2024-08-28 06:00:00', NULL, 'EM PRODUÇÃO'),
(5, 1, 1, '2023-12-15 10:00:00', '2023-12-15 18:00:00', 'FINALIZADA');

SELECT * FROM produtos;
SELECT * FROM funcionarios;
SELECT * FROM maquinas;
SELECT * FROM ordens_producao;