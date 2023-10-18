create table tb_contatos(
id int primary key auto_increment,
nome varchar(45) not null,
email varchar(45),
fone varchar(45) not null
)

create table tb_compromissos(
id int primary key auto_increment,
descricao varchar(100) not null,
data date not null,
hora time not null
)

create table compromisso_contatos(
  compromisso_id int not null,
  contato_id int not null
)

insert into tb_contatos(nome, email, fone)
values ('joão','joao@gmail.com', '996'),
('ana','ana@gmail.com','886');

insert into tb_compromissos(descricao,data,hora)
values('Tomar sorvete','2023-10-10', '13:00:00');

alter table compromisso_contatos add constraint fk_compromissos foreign key (compromisso_id)
references tb_compromissos(id) 
