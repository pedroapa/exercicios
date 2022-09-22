/*Criar o banco*/
create database if not exists producao
default character set utf8
default collate utf8_general_ci;

use producao;

/*Criar tabela*/
create table if not exists customers (
id int not null auto_increment,
name varchar(50) not null,
street varchar(50),
city varchar(50),
state varchar(50),
credit_limit decimal(5, 2),
primary key(id)
)default charset = utf8;

show tables;

describe customers;

/*Insirir registros*/
insert into customers
(name, street, city, state, credit_limit)
value
('Pedro Augusto da Rocha', 'Rua Pedro Carlos Hoffman', 'Porto Alegre', 'RS', '700.00'),
('Antonio Carlos Mamel', 'Av. Pinheiros', 'Belo Horizonte', 'MG', '3500.50'),
('Luiza Augusta Mhor', 'Rua Salto Grande', 'Niteroi', 'RJ', '4000.00'),
('Jane Ester', 'Av 7 de setembro', 'Erechim', 'RS', '800.00'),
('Marcos Antônio dos Santos', 'Av Farrapos', 'Porto Alegre', 'RS', '4250.25');

select * from customers;


/*Ajustes e alterar o decimal do credito-limit*/
truncate table customers;
alter table customers
modify column credit_limit decimal(9, 2);

/*Parte da requesição/questinamento*/

/*O seu trabalho é nos passar os nomes e os endereços dos clientes que moram em 'Porto Alegre'*/

select name, street from customers
where city = 'Porto Alegre';

/*Guardar drump e apagar o banco*/
drop database producao;
