CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
id BIGINT auto_increment,
nome varchar(255) not null,
descricao varchar(200),
primary key(id)
);

INSERT INTO tb_classes(nome, descricao)
VALUES ("Guerreiro", "Especialista em combate"),
("Mago", "Especialista em magia e feitiços");

INSERT INTO tb_classes(nome,descricao)
VALUES ("Assasino", "Especialista em ataque rápidos e furtivos"),
("Arqueiro", "Especialista em ataques a distância"),
("Escudeiro", "Especialista em defesa e cura");

CREATE TABLE tb_personagens(
id BIGINT auto_increment,
nome varchar(255) not null,
nivel int not null,
ataque int not null,
defesa int not null,
classe_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens(nome,nivel,ataque,defesa,classe_id)
VALUES ("Hulk", 5, 99, 64, 1),
("Kratos", 10, 99, 87, 1),
("Wanda", 7, 60, 80, 2),
("Gavião Arqueiro",3, 55, 38, 4),
("Batman", 9, 82, 95, 3),
("Capitão America", 7, 60, 96, 5),
("Goku", 3, 999, 999, 1),
("Superman", 6, 99, 99, 1);

SELECT * FROM tb_personagens WHERE ataque > 500;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 50 AND 70;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id WHERE classe_id = 4;


