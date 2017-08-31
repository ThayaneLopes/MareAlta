create database mareAlta;
use mareAlta;

create table tipo_doacao(id int auto_increment primary key,
nome varchar(30) unique,ativo tinyint(1));

create table cidade_risco( id int auto_increment primary key,
nome varchar(50) not null UNIQUE, regiao varchar(50),
 situacao_risco varchar(20));
 
create table ponto_apoio(id int auto_increment primary key,
nome varchar(100) unique,responsavel varchar(100) unique,telefone_1 varchar(15),
telefone_2 varchar(15), estado varchar(2), bairro varchar(30),
rua_avenida varchar(50),complemento varchar(100), cidade varchar(30),
cep varchar(8),ativo tinyint(1),horario_funcionamento varchar(50),
faz_coleta tinyint(1),faz_triagem tinyint(1),precisa_voluntario tinyint(1));

create table local_abrigo(id int auto_increment primary key,
nome varchar(30) unique,responsavel varchar(100) unique,telefone_1 varchar(15),
telefone_2 varchar(15), estado varchar(2), bairro varchar(30),
rua_avenida varchar(50),complemento varchar(100), cidade int,
cep varchar(8),precisa_voluntario tinyint(1),quant_de_familias int,
foreign key(cidade) references cidade_risco(id));

create table voluntario(id int auto_increment primary key,
cpf varchar(11) unique,nome varchar(100),orgao_publico varchar(30),
email varchar(50),telefone varchar(15), id_ponto_apoio int,id_local_abrigo int,senha varchar(255),
perfil enum('ADMINISTRADOR','VOLUNTARIO','RESPONSAVELLA','RESPONSAVELPA'),
foreign key(id_ponto_apoio) references ponto_apoio(id),
foreign key(id_local_abrigo) references local_abrigo(id));
 
create table itens_aceitos_ponto_coleta(id int auto_increment primary key,
id_ponto_apoio int, id_tipo_doacao int,
foreign key(id_ponto_apoio) references ponto_apoio(id),
foreign key(id_tipo_doacao) references tipo_doacao(id));

create table itens_necessarios_local_abrigo(id int auto_increment primary key,
id_local_abrigo int, id_tipo_doacao int,
foreign key(id_local_abrigo) references local_abrigo(id),
foreign key(id_tipo_doacao) references tipo_doacao(id));

insert into local_abrigo(nome) values("A Definir");
insert into ponto_apoio(nome) values("A Definir");