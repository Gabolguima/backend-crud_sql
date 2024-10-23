-- 1) Criação do banco de dados exercicio_crud_sql e da tabela usuarios.

DROP DATABASE IF EXISTS exercicio_cruq_sql;

CREATE DATABASE exercicio_crud_sql;

create table usuarios (
    id serial,
    nome text not null,
    idade smallint,
    email varchar(50),
    senha varchar(8) not null
);

-- 2) Cadastrar os dados dos usuários.

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

-- 3) Alteração de dados de um usuário em específico.

UPDATE usuarios
SET nome = 'Raja W. Coffey Thomas'
WHERE email = 'raja.feugiat@nonummy.com';

-- 4) Alteração da tabela onde permite o cadastro de emails duplicados e exclusão dos usuários com o mesmo email.

DELETE FROM usuarios 
WHERE email = 'raja.feugiat@nonummy.com';

ALTER TABLE usuarios
ADD CONSTRAINT email_unique_usuarios UNIQUE (email);

-- 5) Cadastrando mais usuários no banco de dados e adicionando um novo campo na tabela chamado "situacao".
INSERT INTO usuarios
(nome, idade, email, senha)
VALUES 
(
  'Jermaine G. Sellers',
  16,
  'ligula.Nullam@tortordictum.co.uk',
  'o2P56U9U'
),
(
  'James D. Kennedy',
  23,
  'amet@Nulladignissim.com',
  'q6B78V3V'
),
(
  'Amelia S. Harris',
  29,
  'nec.metus.facilisis@vitaealiquet.edu',
  'l4S64Y3A'
),
(
  'Joel M. Hartman',
  18,
  'montes.nascetur@odiotristique.co.uk',
  'c4Q27D7O'
),
(
  'Elmo K. Greer',
  18,
  'risus.Duis@eget.ca',
  'e3P92I7R'
);

ALTER TABLE usuarios 
ADD COLUMN situacao BOOLEAN DEFAULT TRUE;

-- 6) Atualização da tabela onde precisa inativar um usuário dela.

UPDATE usuarios
SET situacao = false
WHERE email = 'montes.nascetur@odiotristique.co.uk';

-- 7) Alteração de senha de um usuário específico e excluir a coluna de idade para adicionar outra coluna chamada "data_nascimento".

UPDATE usuarios
SET senha = 'k9P31H1O'
WHERE email = 'risus.Duis@eget.ca';

ALTER TABLE usuarios
DROP COLUMN idade,
ADD COLUMN data_nascimento DATE;

-- 8) Adicionando data de nascimento de usuários.

UPDATE usuarios
SET data_nascimento = '1991-09-29'
WHERE email = 'auctor@duiFuscediam.edu';

UPDATE usuarios
SET data_nascimento = '1988-11-02'
WHERE email = 'nec.metus.facilisis@vitaealiquet.edu';