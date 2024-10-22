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

-- 2) Cadastrar os dados dos usuários

INSERT INTO usuarios 
(nome, idade, email, senha)
VALUES 
(
  'Aretha Montgomery',
  30,
 'augue.id.ante@odioAliquam.com',
  'a0B13O3L'
  ),
(
  'Camden H. Bartlett',
  15,
  'turpis.vitae.purus@risusDuisa.ca',
  'p3P96F3Q'
),
(
  'Raja W. Coffey',
  30,
  'raja.feugiat@nonummy.com',
  's5F51T7L'
),
(
  'Elton D. Olsen',
  29,
  'auctor@duiFuscediam.edu',
  'k5X25B0R'
),
(
  'Shelley E. Frederick',
   20,
  'raja.feugiat@nonummy.com',
  'u2D18F6E'
);

-- 3) Alteração de dados de um usuário em específico

UPDATE usuarios
SET nome = 'Raja W. Coffey Thomas'
WHERE email = 'raja.feugiat@nonummy.com';

-- 4) Alteração da tabela onde permite o cadastro de emails duplicados e exclusão dos usuários com o mesmo email

DELETE FROM usuarios 
WHERE email = 'raja.feugiat@nonummy.com';

ALTER TABLE usuarios
ADD CONSTRAINT email_unique_usuarios UNIQUE (email);