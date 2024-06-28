CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categoria (
id BIGINT auto_increment,
nome varchar(255) not null,
descricao varchar(200) not null,
primary key(id)
);

INSERT INTO tb_categoria(nome, descricao)
VALUES ("Medicamentos", "Produtos para tratamento de doenças"),
("Higiene", "Produtos de higiene pessoal"),
("Beleza", "Produtos de beleza e cuidados pessoais"),
("Vitaminas", "Suplementos e vitaminas"),
("Equipamentos", "Equipamentos médicos e de saúde");

CREATE TABLE tb_produtos(
id BIGINT auto_increment,
nome varchar(255) not null,
descricao varchar(255) not null,
valor decimal(6,2) not null,
quantidade int not null,
categoria_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produtos(nome, descricao, valor, quantidade, categoria_id)
VALUES ("Paracetamol", "Analgésico e antitérmico", 10.00, 100, 1),
("Shampoo", "Produto para limpeza dos cabelos", 15.00, 50, 2),
("Creme Hidratante", "Hidratação para a pele", 25.00, 30, 3),
("Vitamina C", "Suplemento de vitamina C", 20.00, 60, 4),
("Termômetro", "Equipamento para medir temperatura", 50.00, 20, 5),
("Ibuprofeno", "Analgésico e anti-inflamatório", 8.00, 150, 1),
("Escova de Dentes", "Produto para higiene bucal", 5.00, 200, 2),
("Protetor Solar", "Proteção contra raios solares", 60.00, 40, 3);

SELECT * FROM tb_produtos WHERE valor > 50;

SELECT * FROM tb_produtos WHERE valor BETWEEN 5 AND 60;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categoria ON tb_produtos.categoria_id = tb_categoria.id;

SELECT * FROM tb_produtos INNER JOIN tb_categoria ON tb_produtos.categoria_id = tb_categoria.id WHERE tb_categoria.nome = "Higiene";

