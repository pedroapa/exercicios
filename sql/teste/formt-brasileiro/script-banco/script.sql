use test;

show tables;

describe usuario;

select * from usuario;

SELECT nome, dt_nascimento, DATE_FORMAT(dt_nascimento, '%d/%m/%Y') as data_formatada, dt_nascimento  FROM usuario;

select * from film_text;
