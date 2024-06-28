CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
descricao VARCHAR(200),
PRIMARY KEY(id)
);

INSERT INTO tb_categorias(nome, descricao)
VALUES ("Ferramentas", "Ferramentas manuais e elétricas."),
("Tintas", "Tintas e acessórios para pintura."),
("Materiais de Construção", "Materiais básicos para construção."),
("Elétrica", "Produtos para instalações elétricas."),
("Hidráulica", "Produtos para instalações hidráulicas.");

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255),
preco DECIMAL(6,2) NOT NULL,
categoria_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos(nome, descricao, preco, categoria_id)
VALUES ("Martelo", "Martelo de aço com cabo de madeira.", 25.00, 1),
("Broxa de Pintura", "Broxa para aplicação de tintas.", 15.50, 2),
("Cimento", "Saco de cimento de 50kg.", 30.00, 3),
("Fio Elétrico", "Rolo de fio elétrico de 100m.", 120.00, 4),
("Torneira", "Torneira de metal para pia.", 45.00, 5),
("Furadeira", "Furadeira elétrica com várias brocas.", 150.00, 1),
("Tinta Acrílica", "Galão de tinta acrílica branca.", 75.00, 2),
("Areia", "Metro cúbico de areia fina.", 60.00, 3);

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70 AND 150;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.nome = "Hidráulica";