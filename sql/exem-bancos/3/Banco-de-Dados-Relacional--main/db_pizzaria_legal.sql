create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255),
tamanho varchar(255),
numero int,
primary key (id)
);

insert into tb_categoria(categoria, tamanho, numero) values ("Salgada" , "Normal" , 1);
insert into tb_categoria(categoria, tamanho, numero) values ("Salgada" , "Grande" , 2);
insert into tb_categoria(categoria, tamanho, numero) values ("Doce" , "Normal" , 1);
insert into tb_categoria(categoria, tamanho, numero) values ("Doce" , "Grande" , 2);
insert into tb_categoria(categoria, tamanho, numero) values ("Doce e Salgada" , "Normal" , 1);

select *from tb_categoria;

create table tb_pizza (
id bigint auto_increment,
nome varchar(500),
ingrediente varchar(500),
Massa varchar(255),
preco decimal(8,2),
classe_id bigint ,
primary key(id),
foreign key (classe_id) references tb_categoria(id)
);

insert into tb_pizza (nome, ingrediente, Massa, preco, classe_id) values("Atum" , "Atum e cebola", "Fina" , 30.00 , 1);
insert into tb_pizza (nome, ingrediente, Massa, preco, classe_id) values("Brócolis" , "Brócolis e queijo", "Fina" , 35.00 , 1);
insert into tb_pizza(nome, ingrediente, Massa, preco, classe_id) values ("Mozarela" , "Mozarela" , "Grossa" , 25.00 , 2);
insert into tb_pizza(nome, ingrediente, Massa, preco, classe_id) values ("Calabresa" , "Calabresa e cebola" , "Grossa" , 25.00 , 2);
insert into tb_pizza(nome, ingrediente, Massa, preco, classe_id) values ("Portugesa" , "Ovo, cebola, presunto e queijo" , "Grossa" , 28.00 , 2);

select *from tb_pizza;

select *from tb_pizza where preco > 45;

select *from tb_pizza where preco between 29 and 60;

select *from tb_pizza where nome like "%C%";

select *from tb_pizza inner join tb_categoria on tb_pizza.classe_id = tb_categoria.id;

select *from tb_pizza inner join tb_categoria on tb_pizza.classe_id = tb_categoria.id where classe_id = 2;


