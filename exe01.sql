CREATE DATABASE db_hrservice;
	USE db_hrservice;
    CREATE TABLE tb_colaboradores (
    id BIGINT auto_increment,
    nome varchar(250) not null,
    cargo varchar(200) not null,
    salario decimal(6,2) not null,
    dataadmissao date not null,
    primary key(id)
    );
    
    INSERT INTO tb_colaboradores(nome,cargo,salario,dataadmissao)
    VALUES ("Matheus Neves", "Desenvolvedor Júnior", 3500.00, "2024-08-10"),
    ("Carlos Pereira", "Juíz", 8000.00, "2017-02-15"),
    ("Ana Carolina", "Farmacêutica", 4200.00, "2024-06-24"),
    ("Jorge Da Silva", "Operador de Máquinas", 1800.00, "2022-12-05"),
    ("Vitória Aparecida", "Técnico de Qualidade", 1750.00, "2023-10-10");
    
select * from tb_colaboradores;

select * from tb_colaboradores where salario > 2000;

select * from tb_colaboradores where salario < 2000;

UPDATE tb_colaboradores set salario = 3200.00 where id = 6;

select * from tb_colaboradores;