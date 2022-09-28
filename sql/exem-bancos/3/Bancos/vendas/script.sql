use vendas;

show tables;

describe customess;

select * from customess;

delete from customess
where cidade = 'Palhoça'
limit 1;

delete from customess
where id= '2'
limit 1;

insert into customess
(id, name, stret, cidade, state)
value
('6', '	Joaquim Diego Lorenzo Araújo', '15', '	Novo Hamburgo', 'RS');

show tables;

describe legal_person;


alter table legal_person
ADD CONSTRAINT FK_legal_person
foreign key(id_customers) references customess(id);

/*BLZ, eu não consegui fazer as duas tabelas se relacionar, mas agora vou consertar a tabela customes atraves de linhas de comando*/

show tables;

/*Primeira coisa, a tabela esta com nome escrito errado, certo = customers */
alter table customess
rename to customers;

describe customers;

/*Agora os nomes dos campos e seus tipos/confi*/

alter table customers
change column stret street varchar(255) null;

alter table customers
change column cidade city varchar(255) null;

alter table customers
modify column state char(2) null;

alter table customers
add column credit_limit float null;

/*Agora vamos arrumar os registros errados*/

update customers
set street = 'Acesso Um', credit_limit = '475'
where id = '1'
limit 1;

update customers
set street = 'Rua Sizuka Usuy', credit_limit = '3170'
where id = '2'
limit 1;

update customers
set name = 'Augusto Fernando Carlos Eduardo Cardoso', city = 'Palhoça'
where id = '3'
limit 1;

update customers
set street = '', credit_limit = ''
where id = ''
limit 1;


/*Tenho que deletar esse registro e criar outro*/
delete from customers
where id = '4'
limit 1;

insert into customers
(id, name, street, city, state, credit_limit)
value
('4', 'Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', '475');

update customers
set name = 'Sabrina Heloisa Gabriela Barros', street = 'Rua Engenheiro Tito Marques Fernandes',
 city = 'Porto Alegre', state = 'RS', credit_limit = '4312'
where id = '5'
limit 1;

insert into customers
(id, name, street, city, state, credit_limit)
value
('6', 'Joaquim Diego Lorenzo Araújo', 'Rua Vitorino', 'Novo Hamburgo', 'RS', '2314');

select * from customers;

show tables;

describe legal_person;

insert into legal_person
(id_customers, cnpj, contact)
value
('4', '85883842000191', '99767-0562'),
('5', '47773848000117', '99100-8965');

select * from legal_person;

delete from legal_person
where id_customers = '5'
limit 1;

drop database vendas;