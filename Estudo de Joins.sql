-- CRIACAO DE TABELA ALUNOS
create table alunos
(id_aluno int not null auto_increment,
 nome varchar(20) not null,
 primary key(id_aluno)
 );


-- criando a tabela disciplina
create table disciplina
(
 id_disciplina int not null auto_increment,
 nome_disc varchar(20),
 primary key(id_disciplina)
 );


-- criando a tabela matricula
	create table matricula
	 (
	 id_aluno int not null,
	 id_disciplina int not null,
	 periodo varchar(10), 
	 primary key (id_aluno,id_disciplina), 
	 foreign key (id_aluno) references alunos(id_aluno), 
	 foreign key (id_disciplina) references disciplina(id_disciplina)
	);


  -- INSERINDO REGISTRO ALUNOS
  insert into alunos (nome) values ('joao'),('maria'),('pedro'),('tiago'),('henrique');

-- evidencia do insert
  select * from alunos;


  -- INSERINDO REGISTRO DISCIPLINAS
  insert into disciplina (nome_disc) values 
  ('fisica'),('quimica'),('matematica'),('banco de dados'),('programacao');

-- evidencia insert
  select * from disciplina;

-
  -- INSERINDO MATRICULAS DE ALUNOS
  insert into matricula values ('1','1','noturno');
  insert into matricula values ('1','2','vespertino');
  insert into matricula values ('1','3','matutino');

  insert into matricula values ('2','3','noturno');
  insert into matricula values ('2','4','noturno');

  insert into matricula values ('3','1','noturno');
  insert into matricula values ('3','3','noturno');
  insert into matricula values ('3','4','noturno');

  insert into matricula values ('5','1','matutino');
  insert into matricula values ('5','2','vespertino');
  insert into matricula values ('5','4','noturno');

-- evidencia
 select * from matricula;
 
  -- ALUNO CODIG 4 NAO TEM MATRICULA
  -- DISCIPLINA 5 NAO TEM ALUNOS


  -- INNER JOIN

  select a.nome,c.nome_disc,b.periodo
    from alunos a
	inner join matricula b 
		on a.id_aluno=b.id_aluno
	inner join disciplina c 
		on b.id_disciplina=c.id_disciplina;


  -- LEFT JOIN
	select a.nome,c.nome_disc,b.periodo
	from alunos a
	left join matricula b 
		on a.id_aluno=b.id_aluno
	left join disciplina c 
		on b.id_disciplina=c.id_disciplina;
  

 -- RIGHT JOIN
	select a.nome,c.nome_disc,b.periodo
	from alunos a
	right join matricula b 
		on a.id_aluno=b.id_aluno
	right join disciplina c 
		on b.id_disciplina=c.id_disciplina;
		
		
		
		
		
		
-- exemplos extras usando database sakila

-- INNER JOIN
use sakila;

select a.first_name,a.last_name,c.title from actor a
 inner join film_actor b
  on a.actor_id=b.actor_id
 inner join film c
 on b.film_id=c.film_id;


-- LEFT JOIN

select a.first_name,a.last_name,c.title from actor a
 left join film_actor b
  on a.actor_id=b.actor_id
 left join film c
 on b.film_id=c.film_id;


-- RIGHT JOIN

select a.first_name,a.last_name,c.title from actor a
 right join film_actor b
  on a.actor_id=b.actor_id
 right join film c
 on b.film_id=c.film_id;