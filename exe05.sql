CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categoria (
id BIGINT auto_increment,
nome varchar(255) not null,
descricao varchar(200) not null,
primary key(id)
);

INSERT INTO tb_categoria(nome, descricao)
VALUES ("Tradicional", "Pizzas clássicas com sabores tradicionais"),
("Especial", "Pizzas com ingredientes especiais"),
("Vegetariana", "Pizzas sem ingredientes de origem animal"),
("Doce", "Pizzas com ingredientes doces"),
("Premium", "Pizzas gourmet com ingredientes selecionados");

CREATE TABLE tb_pizza(
id BIGINT auto_increment,
nome varchar(255) not null,
descricao varchar(255) not null,
valor decimal(6,2) not null,
tamanho varchar(100) not null,
categoria_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_pizza(nome, descricao, valor, tamanho, categoria_id)
VALUES ("Margherita", "Molho de tomate, mussarela, manjericão", 40.00, "Grande", 1),
("Pepperoni", "Molho de tomate, mussarela, pepperoni", 50.00, "Grande", 1),
("Quatro Queijos", "Molho de tomate, mussarela, gorgonzola, parmesão, provolone", 55.00, "Grande", 2),
("Vegana", "Molho de tomate, queijo vegano, vegetais", 45.00, "Grande", 3),
("Chocolate", "Chocolate derretido, morangos", 30.00, "Média", 4),
("Calabresa", "Molho de tomate, mussarela, calabresa, cebola", 48.00, "Grande", 1),
("Camarão", "Molho de tomate, mussarela, camarão", 65.00, "Grande", 2),
("Brigadeiro", "Brigadeiro, granulado", 35.00, "Média", 4);

SELECT * FROM tb_pizza WHERE valor > 45;

SELECT * FROM tb_pizza WHERE valor BETWEEN 50 AND 100;

SELECT * FROM tb_pizza WHERE nome LIKE "%M%";

SELECT tb_pizza.nome, tb_pizza.descricao, tb_pizza.valor, tb_pizza.tamanho, tb_categoria.nome, tb_categoria.descricao FROM tb_pizza INNER JOIN tb_categoria ON tb_pizza.categoria_id = tb_categoria.id;

SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_pizza.categoria_id = tb_categoria.id WHERE tb_categoria.nome = "doce";

