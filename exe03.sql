CREATE DATABASE db_escola;
USE db_escola;
CREATE TABLE tb_estudantes(
id BIGINT auto_increment,
nome varchar(240) not null,
datanascimento date not null,
anoescolar int,
endereco varchar(300),
primary key (id)
);

INSERT INTO tb_estudantes(nome, datanascimento, anoescolar, endereco)
VALUES ("Ana Clara", "2008-05-20", 9 ,"Rua das Flores, 123, São Paulo, SP"),
   ("Mariana Silva", "2006-12-30", 11 ,"Rua Augusta, 789, São Paulo, SP"),
   ("Pedro Henrique", "2007-09-15", 10 ,"Av. Paulista, 456, São Paulo, SP"),
   ("Lucas Santos", "2009-07-25", 8 ,"Rua das Palmeiras, 101, São Paulo, SP"),
   ("Beatriz Almeida", "2010-03-10", 7 ,"Av. Brasil, 202, São Paulo, SP"),
   ("João Oliveira", "2008-08-18", 9 ,"Rua dos Girassóis, 55, São Paulo, SP"),
   ("Larissa Costa", "2007-11-05", 10 ,"Rua das Acácias, 333, São Paulo, SP"),
   ("Rafael Souza", "2006-04-12", 9 ,"Av. Rebouças, 987, São Paulo, SP");
   
   SELECT * FROM tb_estudantes;
   
   ALTER TABLE tb_estudantes
   ADD COLUMN notas DECIMAL(5, 2) NOT NULL;
   
   UPDATE tb_estudantes SET notas = 7.50 WHERE id = 14;
   UPDATE tb_estudantes SET notas = 8.00 WHERE id = 15;
   UPDATE tb_estudantes SET notas = 5.00 WHERE id = 16;
   UPDATE tb_estudantes SET notas = 3.50 WHERE id = 17;
   UPDATE tb_estudantes SET notas = 10.00 WHERE id = 18;
   UPDATE tb_estudantes SET notas = 7.00 WHERE id = 19;
   UPDATE tb_estudantes SET notas = 9.50 WHERE id = 20;
   UPDATE tb_estudantes SET notas = 6.50 WHERE id = 21;
   
   SELECT * FROM tb_estudantes;
   
   SELECT * FROM tb_estudantes WHERE notas >= 7.0;
   SELECT * FROM tb_estudantes WHERE notas < 7.0;
   