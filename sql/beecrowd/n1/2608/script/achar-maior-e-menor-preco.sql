/*Criação do banco de dados*/
create database if not exists setor_financeiro 
default character set utf8
default collate utf8_general_ci;

use setor_financeiro;

/*Criação das tabelas*/
create table if not exists products (
id int not null auto_increment,
name varchar(50),
amount int,
price real,
primary key(id)
)default charset utf8;

show tables;

describe products;

/*Insirindo dados*/
insert into products
(id, name, amount, price)
value
(default, 'Two-doors wardrobe', '100', '800'),
(default, 'Dining table', '1000', '560'),
(default, 'Towel holder', '10000', '25.50'),
(default, 'Computer desk', '350', '320.50'),
(default, 'Chair', '3000', '210.64'),
(default, 'Single bed', '750', '460');

select * from products;

/*O setor financeiro da nossa empresa, está querendo saber os menores e maiores valores dos produtos,
 que vendemos.
Para isso exiba somente o maior e o menor preço da tabela produtos.*/

select max(price), min(price) from products;

drop database setor_financeiro;