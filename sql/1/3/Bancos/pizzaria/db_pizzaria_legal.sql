create database db_pizzaria_legal
default character set utf8
default collate utf8_general_ci;

use db_pizzaria_legal;

create table tb_categoria(
id int auto_increment,
categoria varchar(255),
tamanho varchar(255),
numero int,
primary key (id)
)default charset = utf8;

insert into tb_categoria
(categoria, tamanho, numero)
values
("Salgada" , "Normal" , 1),
("Salgada" , "Grande" , 2),
("Doce" , "Normal" , 1),
("Doce" , "Grande" , 2),
("Doce e Salgada" , "Normal" , 1);

select *from tb_categoria;

create table tb_pizza (
id int auto_increment,
nome varchar(500),
ingrediente varchar(500),
Massa varchar(255),
preco decimal(8,2),
classe_id int ,
primary key(id),
foreign key (classe_id) references tb_categoria(id)
)default charset = utf8;

insert into tb_pizza 
(nome, ingrediente, Massa, preco, classe_id)
values
("Atum" , "Atum e cebola", "Fina" , 30.00 , 1),
("Brócolis" , "Brócolis e queijo", "Fina" , 35.00 , 1),
("Mozarela" , "Mozarela" , "Grossa" , 25.00 , 2),
("Calabresa" , "Calabresa e cebola" , "Grossa" , 25.00 , 2),
("Portugesa" , "Ovo, cebola, presunto e queijo" , "Grossa" , 28.00 , 2);

select *from tb_pizza;

show tables;

select *from tb_pizza where preco > 45;

select *from tb_pizza where preco between 29 and 60;

select *from tb_pizza where nome like "%C%";

select *from tb_pizza inner join tb_categoria on tb_pizza.classe_id = tb_categoria.id;

select *from tb_pizza inner join tb_categoria on tb_pizza.classe_id = tb_categoria.id where classe_id = 2;

drop database db_pizzaria_legal;


