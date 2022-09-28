/*Criação do banco*/
create database if not exists tenda_atacado
default character set utf8
default collate utf8_general_ci;

use tenda_atacado;

/*Criando tabelas*/
create table if not exists products (
id int not null auto_increment,
name varchar(50) not null,
amount int,
price real,
primary key(id)
)default charset utf8;

/*Inserindo os dados*/
insert into products
(id, name, amount, price)
value
(default, 'Two-doors wardrobe', '100', '800'),
(default, 'Dining table', '1000', '560'),
(default, 'Towel holder', '10000', '25.50'),
(default, 'Computer desk', '350', '320.50'),
(default, 'Chair', '3000', '210.64'),
(default, 'Single bed', '750', '460');

alter table products
modify column price decimal(9,2);

select * from products;

/*Para ajudar o setor que está fazendo esse levantamento você deve calcular
 e exibir o valor médio do preço dos produtos.*/
 select avg(price) from products;
 
 drop database tenda_atacado;