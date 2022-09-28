create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
cursos varchar(255),
aulas int,
Pacote varchar(255),
primary key(id)
);

insert into tb_categoria(cursos, aulas, Pacote) values ("Java" , 10 , "Básico");
insert into tb_categoria(cursos, aulas, Pacote) values ("Java" , 25, "Médio");
insert into tb_categoria(cursos, aulas, Pacote) values ("Java" , 50 , "Avançado");
insert into tb_categoria(cursos, aulas, Pacote) values ("Machine Learning" , 15 , "Básico");
insert into tb_categoria(cursos, aulas, Pacote) values ("Machine Learning" , 80, "Avançado");

select *from tb_categoria;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
professor varchar(255),
Blocos int,
preco decimal (8,5),
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_categoria(id)
);

insert into tb_produtos(nome,professor, Blocos, preco, classe_id) values ("POO" , "Wagner" , 2 , 300.00 , 1);
insert into tb_produtos(nome,professor, Blocos, preco, classe_id) values ("POO" , "Carol" , 5 , 390.00 , 2);
insert into tb_produtos(nome,professor, Blocos, preco, classe_id) values ("POO + API" , "Kaique" , 10 , 600.00 , 3);
insert into tb_produtos(nome,professor, Blocos, preco, classe_id) values ("Neuronios" , "Leticia" , 2 , 400.00 , 4);
insert into tb_produtos(nome,professor, Blocos, preco, classe_id) values ("Alexia" , "Wagner" , 16 , 230.00 , 5);
insert into tb_produtos(nome,professor, Blocos, preco, classe_id) values ("JVM" , "Wagner" , 2 , 200.00 , 1);
insert into tb_produtos(nome,professor, Blocos, preco, classe_id) values ("GIT" , "Wagner" , 2 , 300.00 , 1);
insert into tb_produtos(nome,professor, Blocos, preco, classe_id) values ("GIT E GITHUB" , "Wagner" , 5 , 350.00 , 2);

select *from tb_produtos;

select *from tb_produtos where preco > 50;

select *from tb_produtos where preco between 3 and 50;

select *from tb_produtos where nome like "%j%";

select *from tb_produtos inner join tb_categoria on tb_produtos.classe_id = tb_categoria.id;

select *from tb_produtos inner join tb_categoria on tb_produtos.classe_id = tb_categoria.id where classe_id = 2;