-- Script SQL com criação das tabelas do Sistema de investimentos


CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    pct_corretagem DECIMAL(5,2) NOT NULL
);

CREATE TABLE ativos (
    id_ativo INT AUTO_INCREMENT PRIMARY KEY,
    cod_ativo VARCHAR(10) UNIQUE NOT NULL,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE operacoes (
    id_operacao INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_ativo INT NOT NULL,
    qtd DECIMAL(10,2) NOT NULL,
    preco_unit DECIMAL(10,2) NOT NULL,
    tipo_op CHAR(1) NOT NULL CHECK (tipo_op IN ('C', 'V')),
    corretagem DECIMAL(10,2) NOT NULL,
    dt_hr DATETIME NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_ativo) REFERENCES ativos(id_ativo)
);

CREATE TABLE cotacoes (
    id_cotacao INT AUTO_INCREMENT PRIMARY KEY,
    id_ativo INT NOT NULL,
    preco_unit DECIMAL(10,2) NOT NULL,
    dt_hr DATETIME NOT NULL,
    FOREIGN KEY (id_ativo) REFERENCES ativos(id_ativo)
);

CREATE TABLE posicoes (
    id_posicao INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_ativo INT NOT NULL,
    qtd DECIMAL(10,2) NOT NULL,
    preco_medio DECIMAL(10,2) NOT NULL,
    pnl DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_ativo) REFERENCES ativos(id_ativo)
);
