/*Criação do banco*/
create database if not exists db_brasil
default character set utf8
default collate utf8_general_ci;

use db_brasil;

/*Criando tabelas*/
create table if not exists customers (
id int not null auto_increment,
name varchar(50) not null,
street varchar(50),
city varchar(50),
state  char(2),
credit_limit decimal(9,2),
primary key(id)
)default charset utf8;

/*Inserindo os dados*/
insert into customers
(id, name, street, city, state, credit_limit)
value
(DEFAULT, 'Pedro Augusto da Rocha', 'Rua Pedro Carlos Hoffman', 'Porto Alegre', 'RS', '700.00'),
(DEFAULT, 'Antonio Carlos Mamel', 'Av. Pinheiros', 'Belo Horizonte', 'MG', '3500.50'),
(DEFAULT, 'Luiza Augusta Mhor', 'Rua Salto Grande', 'Niteroi', 'RJ', '4000.00'),
(DEFAULT, 'Jane Ester', 'Av 7 de setembro', 'Erechim', 'RS', '800.00'),
(DEFAULT, 'Marcos Antônio dos Santos', 'Av Farrapos', 'Porto Alegre', 'RS', '4250.25');

select * from customers;

/*Perguntando para o banco*/
/*Então você deve Exibir o nome de todos os clientes cujo estado seja ‘RS’.*/
select name from customers
where state = 'RS';

drop database db_brasil;
