-- prova P2
/*   ---TechMarica---   */

-- ### DDL ### --

CREATE DATABASE IF NOT EXISTS techmarica;
USE techmarica;
SHOW DATABASES;

-- MODELAGEM 

CREATE TABLE produtos(
	id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
	sku VARCHAR(40) NOT NULL UNIQUE,
	nome VARCHAR(120) NOT NULL,
	responsavel_tecnico VARCHAR(150) NOT NULL,
	custo DECIMAL(12,2) NOT NULL,
	data_criacao DATE NOT NULL 
);

CREATE TABLE funcionarios(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(200) NOT NULL,
	area VARCHAR(100) NOT NULL,
	ativo TINYINT(1) NOT NULL DEFAULT 1,
	data_admissao DATE
);

CREATE TABLE maquinas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(150) NOT NULL,
  tipo VARCHAR(100),
  capacidade INT,
  ativo TINYINT(1) NOT NULL DEFAULT 1
) ;

CREATE TABLE ordens_producao (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_produto INT NOT NULL,
  id_funcionario INT NOT NULL,
  id_maquina INT NOT NULL,
  data_inicio DATETIME NOT NULL,
  data_fim DATETIME DEFAULT( NULL),
  status ENUM('EM PRODUÇÃO','FINALIZADA','CANCELADA') NOT NULL DEFAULT('EM PRODUÇÃO'),
  FOREIGN KEY (id_produto) REFERENCES produtos(id),
  FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id),
  FOREIGN KEY (id_maquina) REFERENCES maquinas(id)
  );
  
  SHOW TABLES;
  
  