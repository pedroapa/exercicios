/*REVISÃO DO CONHECIMENTO */

/*Criação de um banco novo*/

create database if not exists revisao
default character set utf8
default collate utf8_general_ci;

/*Correção:
*podia ter usado if not exists
 resto ta ok*/
 
 use revisao;
 
 /*Criação das estruturas das tabelas */
 create table if not exists alnos(
 nome varchar(30) not null,
 endereco varchar(30),
 mat int not null,
 cidade varchar(20),
 pais varchar(20),
 primary key(mat)
 )default charset = utf8;
 
 /*Não estou começando pelo campo da chave primaria e não sei se isso pode dar erro */
 
 describe alnos;
 
 /*Outra agora */
 create table if not exists disciplinas(
 ccarga_hor int,
 nome_disc varchar(15)
 )default charset = utf8;
 /*Ta faltando chave primaria nesta */
 
 describe disciplinas;
 
	/*Correção da estrutura */
 /*Corrigir nome da tabela alunos */
 alter table alnos
 rename to alunos;
 /*Esqueci como se renomeava uma tabela */
 describe alunos;
 
 /*Por campos na ordem certa*/
 alter table alunos
 drop column mat;
 
 alter table alunos
 add column mat int not null first;
 
 /*Tornando mat chave primaria */
 alter table alunos
 add primary key(mat);
 
 /*OBS: Colocamos add na hora de adicionar uma chave primaria */
 
 /*Deletar uma coluna desnecessaria */
 alter table alunos
 drop column pais;
 
	/*Agora tabela disciplina */
/*Insirir coluna/campo */
 alter table disciplinas
 add column cod_disc int not null first;
 
 /*Torna-lo primary key */
 alter table disciplinas
 add primary key(cod_disc);
 
 /*Corrigir nome de coluna/campo */
 alter table disciplinas
 change ccarga_hor carga_hor int;
 /*OBS: se voce alterar o nome de uma coluna sem dizer aonde é para
 ela ficar, então sua posição vai continuar a mesma*/
 
 /*Mudando a posição de uma coluna/campo */
 alter table disciplinas
 modify column carga_hor int after nome_disc;
 
 describe disciplinas;
 
	/*Inserção de dados */
/*alunos */
 insert into alunos
 (mat, nome, endereco, cidade)
 values
 ('2015010102', 'JOÃO DORIA', 'AVENIDA RUY CARNEIRO', 'JOÃO PESSOA'),
 ('2015010101', 'JOS DE ALENCAR', 'RUA DAS ALMAS', '');

 
 select * from alunos;
 
 /*disciplina */
 
 /*Agora que notei que cod_disc é um caracter e não um identificador numerico,
 tenho que corrigir isso*/
 
 alter table disciplinas
 modify column cod_disc varchar(5) not null;
 /*Resolvido, eu não coloque first, porque se não por nada, a posição não muda*/
 insert into disciplinas
 (cod_disc, nome_disc, carga_hor)
 values
 ('BD', 'BD', '100'),
 ('POO', 'PROGRAMAÇÃO COM ACESSO DE DADOS', '');
 
 /*Não cadastrou o nome inteiro da POO porque coloquei pouco caracter, vou resolver isso 
 e mudar o registro*/
 
 alter table disciplinas
 modify column nome_disc varchar(25);
 
 select * from disciplinas;
 
	/*CORRIGINDO REGISTROS */
/*alunos */
update alunos
set nome = 'JOSE DE ALENCAR', cidade = 'NATAL'
where mat = '2015010101'
limit 1;

update alunos
set nome = 'JOÃO JOSÉ'
where mat = '2015010102'
limit 1;
 
 /*Disciplinas */
 update disciplinas
 set nome_disc = 'BANCO DE DADOS'
 where cod_disc = 'BD'
 limit 1;
 
 update disciplinas
 set nome_disc = 'PROGRAMAÇÃO COM ACESSO A BANCO DE DADOS', carga_hor = '100'
 where cod_disc = 'POO'
 limit 1;

/*Mas que nome grande... */
alter table disciplinas
 modify column nome_disc varchar(40);

update disciplinas
set nome_disc = 'PROGRAMAÇÃO COM ACESSO A BANCO DE DADOS', carga_hor = '100'
where cod_disc = 'POO'
limit 1;
 
/*Para praticar, vou deletar alguns dados */
delete from alunos
where mat = '2015010102'
limit 1;

/*Não lembro como deletar um registro/linha*/
/*Não lembrava porque voce apaga uma linha inteira e não só um registro
pensando bem faz sentido, se voce quer modificar um registro, é só usar 
update, mas se quer que uma linha seja apagada, voce diz qual tabela voce
quer apagar e qual é a linha */

/*OBS: Eu apaguei os dois registro porque queria na ordem, mas na hora de inserir
de novo, eu estava executando o comando de update, mas como modificar algo que não
esta cadastrado? k e vou tentar cadastrar o segundo item primeiro
Não importa a ordem, parece que por ter chave primaria ele ordena em ordem numerica
 crescente*/
 select * from alunos;
 select * from disciplinas;
 
 /*Pratiquei, agora hora de deletar o banco de dados */
 drop database revisao;