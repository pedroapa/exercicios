/*Criação do banco*/
create database if not exists db_empresa
default character set utf8
default collate utf8_general_ci;

use db_empresa;

/*Criando tabelas*/
create table if not exists customers (
id int not null auto_increment,
name varchar(255) not null,
street varchar(255),
city varchar(255),
state char(2),
credit_limit real,
primary key(id)
)default charset utf8;

drop table customers;
/*Inserindo os dados*/
insert into customers
(id, name, street, city, state, credit_limit)
value
(DEFAULT, 'Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', '475'),
(DEFAULT, 'Cecília Olivia Rodrigues', 'Rua Sizuka Usuy', 'Cianorte', 'PR', '3170'),
(DEFAULT, 'Augusto Fernando Carlos Eduardo Cardoso', 'Rua Baldomiro Koerich', 'Palhoça', 'SC', '1067'),
(DEFAULT, 'Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', '475'),
(DEFAULT, 'Sabrina Heloisa Gabriela Barros', 'Rua Engenheiro Tito Marques Fernandes', 'Porto Alegre', 'RS', '4312'),
(DEFAULT, 'Joaquim Diego Lorenzo Araújo', 'Rua Vitorino', 'Novo Hamburgo', 'RS', '2314');

select * from customers;

/*Perguntando para o banco*/
/*Para fazer isso você deve exibir a quantidade de cidades distintas da tabela clientes.*/
select distinct count(city)  from customers;