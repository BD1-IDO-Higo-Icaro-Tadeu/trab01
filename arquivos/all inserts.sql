/*inserts*/
/*SERVIÇO OFERECIDO*/

insert into servico (servico_oferecido) values
('cliente'),
('pintor'),
('cozinheiro'),
('pedreiro'),
('carpinteiro'),
('faxineiro'),
('segurança'),
('garçon'),
('motorista'),
('Técnico de Informética'),
('pedreiro');

/*ESTADO*/
insert into estado (sigla) values 
('SP'),('PR'), 
('RJ'),('PA'),
('MG'),('RO'),
('RS'),('PI'),
('ES'),('SE'),
('PE'),('BA');

/*CIDADE*/
insert into cidade (cidade,estado_fid) values
('Cariacica', 9),
('Vila Velha', 1),
('Serra', 3),
('Guarapari',	2),
('Alegre',	5),
('Domingos',	7),
('Venda Nova',	8),
('Viana',	11),
('Fundao',	10),
('Aracruz',	4);


/*BAIRRO*/

insert into bairro (bairro,cidade_fid) values
('Vila São Paulo',	2),
('Serra Dourada', 3),
('Boto Branco',	4),
('Sergio Paz',5),
('Vila Melo',6),
('Republica',8),
('Ribeirão',9),
('Catolico',2),
('Praia Grande',1),
('Coqueiral de Aracruz',6);

/*CEP*/
insert into cep (cep_id,rua,bairro_fid) values
(29180054,	'Rua Café Filho', 1),
(28746896,	'Rua Diamante',	2),
(29000000,	'Rua Pedra Bonita',	3),
(25689211,	'Rua da Paz',	4),
(87964294,	'Rua da Guerra',	5),
(45464789,	'Rua dos Aprovados',	6),
(98653597,	'Rua Goiás',	7),
(98569221,	'Rua Sem Nome',	8),
(89641321,	'Rua do Beco',	9),
(12365589,	'Rua Isabel',	10);

/*ENDEREÇO*/
insert into endereco (cep_fid,usuario_fid) values
(29180054,111111),
(28746896,222222),
(29000000,333333),
(25689211,444444),
(87964294,555555),
(45464789,666666),
(98653597,777777),
(98569221,888888),
(89641321,999999),
(12365589,123456);

insert into pessoa (nome,email, rg, senha, num_casa,cpf_id,endereco_fid, usuario,contato_fid,servico_fid,descricao_fid) values 
('Tadeu Junior',	'tadeu@gmail.com',	223344,	'11111',	55,111111,1,'Tadeu',1,2,1),
('Yan de Paula','yan@gmail.com',887766,	'22222',	456,222222,4,'Yan',2,1,2),
('Ewerson Vieira',	'ewerson@gmail.com',	323456,	'33333',	89,333333,5,'Ewerson',3,3,3),
('Lucas Gomes Irinel',	'luca-irinel@gmail.com',	265260,	'44444',	86,444444,6,'Lucas',4,4,4),
('Icaro Duarte'	,'icaro@gmail.com',	223344,	'55555',	47,555555,7,'Icaro',5,1,5),
('David Vilaca', 'david@gmail.com',	445566,	'66666',	22,666666,8,'David',6,7,6),
('Leandro Goias', 'leandro@gmail.com',	778899,	'77777',	36,777777,9,'Leandro',7,9,7),
('Luiz Melodia','luiz@gmail.com',	345234,	'88888',	35,888888,3,'Luiz',8,9,8),
('Elimar Lolzin',	'elimar@gmail.com',	567533, '99999',	327,999999,1,'Elimar',9,10,9),
('Julio Faker',	'julio@gmail.com',	456789,	'12345',	641,123456,2,'Julio',10,11,10);


/*CONTATO*/

insert into contato (celular,telefone,usuario_fid,contato_id) values
(998765432,	33480939,	111111,1),
(987654321,	22228876,	222222,2),
(912345678,	33398726,	333333,3),
(903625347,	33448765,	444444,4),
(999876543,	33876529,	555555,5),
(988765432,	34567839,	666666,6),
(977865432,	32987654,	777777,7),
(988766543,	34568976,	888888,8),
(999988877,	34567892,	999999,9),
(990473645,	34987654,	123456,10);

/*Cartao*/
alter table cartao alter column numero_cartao type varchar (50);
insert into cartao (nome_cartao,numero_cartao,cvv,validade,cliente_fid) values
('Tadeu Junior',	'11122233345',	234,	'10-09-18',	111111),
('Yan Paula',	'11133344456',	345,	'08-05-19',	222222),
('Ewerso Vieira',	'11122255678',	462,	'23-03-20',	333333),
('Lucas G Irinel',	'11145678902',	345,	'09-03-27',	444444),
('Icaro Duarte',	'11234567890',	567,	'24-12-20',	555555),
('David Vilaca',	'23411123456',	456,	'22-10-19',	666666),
('Leandro Goias',	'45322234567',	432,	'31-12-20',	777777),
('Luiz Melodia',	'66677788906',	456,	'12-12-17',	888888),
('Elimar Lolzin',	'23451234567',	765,	'12-05-23',	999999),
('Julio Faker',	'23451789654',	567,	'11-09-21',	123456);

/*SERVICO CONTRATADO*/
insert into servico_contratado (usuario_fid,servico_fid,prestador_fid,servico_descricao_fid) values

(111111,	6,	666666,6),	
(222222,	4,	333333,3),	
(333333,	3,	999999,9),	
(444444,	2,	123456,1),	
(555555,	2,	123456,1),	
(666666,	3,	333333,9),	
(777777,	6,	666666,6),	
(888888,	3,	333333,3),	
(999999,	3,	333333,3),
(222222,	11,	123456,10);

/*SERVICO_DESCRICAO*/
insert into  servico_descricao (usuario_fid,servico_opcao,unidade,valor,servico_fid,foto,minitexto) values

(111111,	'parede', 	'metro quadrado',	'150,00',	2,	'foto da parede','Sou o melhor no que faço'),
(222222,	NULL,	NULL,	NULL,	1,	NULL,NULL),
(333333,	'casa',	'dia',	'50,00',	4,	'foto casa','Melhor pintor do app'),
(444444,	'cama',	'a combinar',	'10,00',	5,	'foto mesa','Faço qualquer serviço'),
(555555,	NULL,	NULL,	NULL,	1,	NULL,NULL),
(666666,	'evento',	'dia',	'100,00',	7,	'foto segurança','Comigo ninguem morre'),
(777777,	'evento',	'a combinar',	NULL,	8,	'foto garçon','Sou amigo de todos'),
(888888,	NULL,	NULL,	NULL,	1,	NULL,NULL),
(999999,	'dia',	'valor fixo',	'300,00',	3,	'foto arroz','Tempero de Mae'),
(123456,	'hora',	'a combinar',	NULL,	11,	'foto banheiro','Me contratae e nao se arrependa');



/*Chaves necessarias*/
ALTER TABLE servico_descricao ADD FOREIGN KEY(servico_fid) REFERENCES servico (servico_id);
ALTER TABLE servico_descricao ADD FOREIGN KEY(usuario_fid) REFERENCES pessoa (cpf_id);
ALTER TABLE pessoa ADD FOREIGN KEY(descricao_fid) REFERENCES servico_descricao (descricao_id);
ALTER TABLE pessoa ADD FOREIGN KEY(contato_fid) REFERENCES contato (contato_id);
ALTER TABLE endereco ADD FOREIGN KEY(usuario_fid) REFERENCES pessoa (cpf_id);

