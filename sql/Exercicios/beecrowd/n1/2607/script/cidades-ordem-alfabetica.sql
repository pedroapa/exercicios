/*Criação do banco*/
create database if not exists producao
default character set utf8
default collate utf8_general_ci;

use producao;

/*Criação da tabela*/
create table if not exists providers (
id int not null auto_increment,
name varchar(50) not null,
street varchar(50),
city varchar(50),
state char(3),
primary key(id)
)default charset = utf8;

describe providers;

/*Inserindo dados*/
insert into providers
(id, name, street, city, state)
value
(DEFAULT, 'Henrique', 'Av Brasil', 'Rio de Janeiro', 'RJ'),
(DEFAULT,'Marcelo Augusto', 'Rua Imigrantes', 'Belo Horizonte', 'MG'),
(DEFAULT,'Caroline Silva', 'Av São Paulo', 'Salvador', 'BA'),
(DEFAULT,'Guilerme Staff', 'Rua Central', 'Porto Alegre', 'RS'),
(DEFAULT,'Isabela Moraes', 'Av Juiz Grande', 'Curitiba', 'PR'),
(DEFAULT,'Francisco Accerr', 'Av Paulista', 'São Paulo', 'SP');

insert into providers
(id, name, street, city, state)
value
(DEFAULT, 'Paulo Coelho', 'Italia Sunin', 'São Paulo', 'SP');

delete from providers
where id = '7'
limit 1;

select * from providers;

/*Fazendo perguntas/questinamento*/
/*uma consulta no Banco de Dados que retorne todas as cidades dos fornecedores, mas em ordem alfabética*/
select distinct city  from providers
order by city;

drop database producao;