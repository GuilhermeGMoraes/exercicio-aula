create table tb_contatos(
  id int primary key auto_increment,
  nome varchar(45) not null,
  email varchar(45),
  fone varchar(14)
)

drop table tb_contatos;

create table tb_contatos(
  id int not null auto_increment,
  nome varchar(45) not null,
  email varchar(45),
  fone varchar(14),
  primary key(id) 
)

create table tb_locais(
  id int primary key auto_increment,
  nome varchar(45) not null,
  rua varchar(45),
  numero int
)

create table tb_compromissos(
   id int primary key auto_increment,
   descricao varchar(100) not null,
   data date not null,
   hora time not null
)

drop table tb_compromissos

create table tb_compromissos(
   id int primary key auto_increment,
   descricao varchar(100) not null,
   data date not null,
   hora time not null,
   tb_contatos_id int not null,
   tb_locais_id int not null,
   foreign key(tb_contatos_id) references tb_contatos(id),
   foreign key(tb_locais_id) references tb_locais(id)
)

insert into tb_contatos(nome, email)values('maria','maria@gmail.com');
select * from tb_contatos;

update tb_contatos set
fone = '(47)9087-0987',
nome = 'Maria das Dores'
where id = 2

insert into tb_locais(nome, rua)values('Pesqueiro','rua vii');
select * from tb_locais

insert into tb_compromissos
(descricao, data, hora, tb_contatos_id, tb_locais_id)
values('Jogar bocha','2023-10-15','13:00:00',1, 1),
('Pescar','2023-10-05','13:00:00',2, 1)

insert into tb_compromissos
(descricao, data, hora, tb_contatos_id, tb_locais_id)
values('Jogar bocha','2023-10-15','13:00:00',1, 1);

insert into tb_compromissos
(descricao, data, hora, tb_contatos_id, tb_locais_id)
values('Pescar','2023-10-05','13:00:00',2, 1);

select * from tb_compromissos

select tb_compromissos.id, descricao, data, hora, nome
from tb_compromissos, tb_contatos
where tb_compromissos.tb_contatos_id = tb_contatos.id

select tb_comp.id, descricao as Descrição, data, hora, nome as Contato
from tb_compromissos tb_comp, tb_contatos tc
where tb_comp.tb_contatos_id = tc.id

select tb_comp.id, descricao as Descrição, data, hora, nome as Contato
from tb_compromissos tb_comp
inner join tb_contatos tc on tb_comp.tb_contatos_id = tc.id
where tb_comp.tb_contatos_id = 2