CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
descricao VARCHAR(200),
PRIMARY KEY(id)
);

INSERT INTO tb_categorias(nome, descricao)
VALUES ("Programação", "Cursos de desenvolvimento de software."),
("Design", "Cursos de design gráfico e UX/UI."),
("Marketing", "Cursos de marketing digital."),
("Negócios", "Cursos de administração e empreendedorismo."),
("Idiomas", "Cursos de idiomas estrangeiros.");

CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(200) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
categoria_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_cursos(nome, descricao, preco, categoria_id)
VALUES ("Curso de Java", "Aprenda a programar em Java.", 750.00, 1),
("Curso de Photoshop", "Domine o Adobe Photoshop.", 500.00, 2),
("Curso de Marketing Digital", "Estratégias de marketing na era digital.", 850.00, 3),
("Curso de Empreendedorismo", "Aprenda a criar e gerenciar seu próprio negócio.", 600.00, 4),
("Curso de Inglês", "Curso completo de inglês para iniciantes.", 450.00, 5),
("Curso de Python", "Programação em Python do básico ao avançado.", 900.00, 1),
("Curso de Ilustração Digital", "Técnicas de ilustração com ferramentas digitais.", 650.00, 2),
("Curso de Espanhol", "Curso de espanhol para todos os níveis.", 400.00, 5);

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE "%J%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id;

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id WHERE tb_categorias.nome = "Programação";