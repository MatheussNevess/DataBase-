CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT ,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    PRIMARY KEY(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
("Carnes Bovinas", "Produtos derivados de carne de boi."),
("Carnes Suínas", "Produtos derivados de carne de porco."),
("Aves", "Produtos derivados de carne de aves."),
("Peixes", "Produtos derivados de peixe."),
("Embutidos", "Produtos como salsichas e linguiças.");

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(6, 2) NOT NULL,
    categoria_id BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, descricao, preco, categoria_id) VALUES
("Picanha", "Corte de carne bovina de alta qualidade.", 75.00, 1),
("Costela Suína", "Costela de porco ideal para churrasco.", 55.00, 2),
("Coxa de Frango", "Corte de carne de frango.", 25.00, 3),
("Salmão", "Filé de salmão fresco.", 120.00, 4),
("Linguiça Toscana", "Linguiça de porco temperada.", 35.00, 5),
("Filé Mignon", "Corte de carne bovina nobre.", 130.00, 1),
("Lombo Suíno", "Corte de carne de porco.", 45.00, 2),
("Peito de Frango", "Corte de carne de frango sem osso.", 30.00, 3);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.nome = "Aves";