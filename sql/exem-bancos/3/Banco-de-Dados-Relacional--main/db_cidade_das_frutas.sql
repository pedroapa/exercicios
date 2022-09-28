create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255),
cor varchar(500),
tipo int,
primary key (id)
);

insert into tb_categoria(categoria, cor, tipo) values ("Fruta" , "Amarela" , 1);
insert into tb_categoria(categoria, cor, tipo) values ("Fruta" , "Vermelha" , 2);
insert into tb_categoria(categoria, cor, tipo) values ("Fruta" , "Verde" , 3);
insert into tb_categoria(categoria, cor, tipo) values ("Fruta" , "Laranja" , 4);
insert into tb_categoria(categoria, cor, tipo) values ("Fruta" , "Roxa" , 5);

select *from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar(500),
preco decimal(8,2),
Tamanho varchar(255),
Origem varchar(500),
classe_id bigint,
primary key(id),
foreign key (classe_id) references tb_categoria(id)
);

insert into tb_produtos (nome, preco, Tamanho, Origem, classe_id) values ("Banana" , 5.00 , "médio" , "Bahia" , 1);
insert into tb_produtos (nome, preco, Tamanho, Origem, classe_id) values ("Abacaxi" , 6.00, "grande" , "Bahia" , 1);
insert into tb_produtos (nome, preco, Tamanho, Origem, classe_id) values ("Maçã" , 2.00 , "pequeno" , "Santa Catarina" , 2);
insert into tb_produtos (nome, preco, Tamanho, Origem, classe_id) values ("Cereja" , 6.00, "pequeno" , "Minas Gerais" , 2);
insert into tb_produtos (nome, preco, Tamanho, Origem, classe_id) values ("Maçã Verde" , 3.50, "médio" , "São Paulo" , 3);
insert into tb_produtos (nome, preco, Tamanho, Origem, classe_id) values ("Laranja" , 1.50, "médio" , "Curitiba" , 4);
insert into tb_produtos (nome, preco, Tamanho, Origem, classe_id) values ("Uva Verde" , 3.75, "médio" , "Curitiba" , 3);
insert into tb_produtos (nome, preco, Tamanho, Origem, classe_id) values ("Uva" , 2.50, "médio" , "Curitiba" , 5);

select *from tb_produtos;

select *from tb_produtos where preco > 50;

select *from tb_produtos where preco between 3 and 60;

select *from tb_produtos where nome like "%C%";

select *from tb_produtos inner join tb_categoria on tb_produtos.classe_id = tb_categoria.id;

select *from tb_produtos inner join tb_categoria on tb_produtos.classe_id = tb_categoria.id where classe_id = 3 and 4;
