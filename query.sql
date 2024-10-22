-- 1) Criação do banco de dados exercicio_crud_sql e da tabela usuarios

DROP DATABASE IF EXISTS exercicio_cruq_sql;

CREATE DATABASE exercicio_crud_sql;

create table usuarios (
    id serial,
    nome text not null,
    idade smallint,
    email varchar(50),
    senha varchar(8) not null
);