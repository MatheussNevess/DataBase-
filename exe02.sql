CREATE DATABASE db_ecommerce;
USE db_ecommerce;
CREATE TABLE tb_produtos (
id BIGINT auto_increment,
nome varchar(200) not null,
valor decimal(8,2) not null,
marca varchar(100) not null,
tipo varchar(100) not null,
primary key (id)
);

ALTER TABLE tb_produtos
CHANGE COLUMN tipo estoque INT NOT NULL;

INSERT INTO tb_produtos(nome, valor, marca, estoque)
VALUES ("Tênis", 459.99, "Nike", 80),
("Camiseta", 49.99, "Polo", 160),
("Relógio", 1799.99, "Rolex", 20),
("Calça", 150.00, "Adidas", 100),
("Saia", 80.00, "Polo", 120),
("Boné", 99.99, "Nike", 30),
("Sapato", 220.00, "Democrata", 40),
("Perfume", 1200.00, "Montblanc", 60);

SELECT * FROM tb_produtos where valor > 500;

SELECT * FROM tb_produtos where valor < 500;

UPDATE tb_produtos SET estoque = 30 WHERE id = 8;

SELECT * FROM tb_produtos;


