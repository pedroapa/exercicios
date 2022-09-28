create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255),
setor int,
estoque int,
primary key (id)
);

insert into tb_categoria(categoria, setor, estoque) values ("Antibiótico" , 1 , 100);
insert into tb_categoria(categoria, setor, estoque) values ("Antiflamatório" , 2 , 550);
insert into tb_categoria(categoria, setor, estoque) values ("Higiene" , 3 , 180);
insert into tb_categoria(categoria, setor, estoque) values ("Cuidados e Beleza" , 4 , 322);
insert into tb_categoria(categoria, setor, estoque) values ("Limpeza de Estômago" , 5 , 1100);

select *from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar(500),
preco decimal(8,2),
ml int,
Originalidade varchar(500),
classe_id bigint,
primary key(id),
foreign key (classe_id) references tb_categoria(id)
);

insert into tb_produtos (nome, preco, ml, Originalidade, classe_id) values ("Melhora" , 120.50, 120 , "Original" , 1);
insert into tb_produtos (nome, preco, ml, Originalidade, classe_id) values ("No Inflame" , 52.00, 350 , "Original" , 2);
insert into tb_produtos (nome, preco, ml, Originalidade, classe_id) values ("Sem Cravos" , 2.00 , 50 , "Genérico" , 4);
insert into tb_produtos (nome, preco, ml, Originalidade, classe_id) values ("Escova" , 7.00 , 12 , "Genérico" , 3);
insert into tb_produtos (nome, preco, ml, Originalidade, classe_id) values ("Tomou Limpou" , 12.00, 700 , "Original" , 5);
insert into tb_produtos (nome, preco, ml, Originalidade, classe_id) values ("Sem Espinhas" , 3.50 , 50 , "Genérico" , 4);
insert into tb_produtos (nome, preco, ml, Originalidade, classe_id) values ("Sem Oleosidade" , 80.50 , 499 , "Original" , 4);
insert into tb_produtos (nome, preco, ml, Originalidade, classe_id) values ("Bió" , 90.50 , 135 , "Original" , 1);

select *from tb_produtos;

select *from tb_produtos where preco > 50;

select *from tb_produtos where preco between 3 and 60;

select *from tb_produtos where nome like "%B%";

select *from tb_produtos inner join tb_categoria on tb_produtos.classe_id = tb_categoria.id;

select *from tb_produtos inner join tb_categoria on tb_produtos.classe_id = tb_categoria.id where classe_id = 4;
