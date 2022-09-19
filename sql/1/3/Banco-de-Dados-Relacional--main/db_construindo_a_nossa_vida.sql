create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
sala varchar(255),
banheiro varchar(500),
cozinha varchar(255),
primary key (id)
);

insert into tb_categoria(sala, banheiro, cozinha) values ("TV" , "Espelho" , "Pia");
insert into tb_categoria(sala, banheiro, cozinha) values ("Sofá" , "Box" , "Fogão");
insert into tb_categoria(sala, banheiro, cozinha) values ("Carpete" , "Chuveiro" , "Geladeira");
insert into tb_categoria(sala, banheiro, cozinha) values ("Poltrona" , "Vaso" , "Mesa");
insert into tb_categoria(sala, banheiro, cozinha) values ("TV" , "Espelho" , "Pia");

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

insert into tb_produtos (nome, preco, Tamanho, Origem, classe_id) values ("Combo 1" , 3500.00 , "médio" , "SP" , 1);
insert into tb_produtos (nome, preco, Tamanho, Origem, classe_id) values ("Combo 2" , 6000.00, "grande" , "SP" , 1);
insert into tb_produtos (nome, preco, Tamanho, Origem, classe_id) values ("Combo 3" , 2000.00 , "grande" , "SP" , 2);
insert into tb_produtos (nome, preco, Tamanho, Origem, classe_id) values ("Combo 4" , 9500.00, "médio" , "LA" , 3);
insert into tb_produtos (nome, preco, Tamanho, Origem, classe_id) values ("Combo 5" , 7200.00, "grande" , "Minas Gerais" , 4);
insert into tb_produtos (nome, preco, Tamanho, Origem, classe_id) values ("Combo 6" , 10000.00, "médio" , "Curitiba" , 4);
insert into tb_produtos (nome, preco, Tamanho, Origem, classe_id) values ("Combo 7" , 800.99, "pequeno" , "Curitiba" , 5);
insert into tb_produtos (nome, preco, Tamanho, Origem, classe_id) values ("Combo 8" , 2000.00, "médio" , "Curitiba" , 5);

select *from tb_produtos;

select *from tb_produtos where preco > 50;

select *from tb_produtos where preco between 3 and 60;

select *from tb_produtos where nome like "%C%";

select *from tb_produtos inner join tb_categoria on tb_produtos.classe_id = tb_categoria.id;

select *from tb_produtos inner join tb_categoria on tb_produtos.classe_id = tb_categoria.id where classe_id = 3 and 4;
