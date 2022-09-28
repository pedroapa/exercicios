/*menores10-maiores100*/

/*Criação do banco*/
create database if not exists setor_financeiro
default character set utf8
default collate utf8_general_ci;

use setor_financeiro;

drop database setor_financeiro;

/*Criação da tabela*/
create table if not exists products (
id int not null auto_increment,
name varchar(50) not null,
amount int,
price int,
primary key(id)
)default charset utf8;

show tables;

describe products;

/*Alterando o tipo do price*/
alter table products
modify column price decimal(9, 2);


/*Inserindo dados*/
insert into products
(id, name, amount, price)
value
(DEFAULT, 'Two-door wardrobe', '100', '80'),
(DEFAULT, 'Dining table','1000','560'),
(DEFAULT, 'Towel holder','10000','5.50'),
(DEFAULT, 'Computer desk', '350', '100'),
(DEFAULT, 'Chair','3000', '210.64'),
(DEFAULT, 'Single bed', '750', '99');

select * from products;

/*Fazendo perguntas/questinamento*/
/*O setor financeiro da empresa precisa de um relatório que mostre o código e o nome dos produtos
 cujo preço são menores que 10 ou maiores que 100.*/
 select id, name from products
 where price < '10' OR price > '100';
 
 drop database setor_financeiro;