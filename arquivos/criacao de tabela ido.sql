-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.


CREATE TABLE cep (
bairro_fid INTEGER,
rua VARCHAR(50),
cep_id INTEGER PRIMARY KEY
);

CREATE TABLE contato (
contato varchar(100),
tipo_contato varchar(100),    
usuario_fid INTEGER
);

CREATE TABLE avaliacao (
comentario VARCHAR(100),
nota INTEGER,
prestador_fid INTEGER,
cliente_fid INTEGER,
servico_fid INTEGER
);

CREATE TABLE cartao (
nome_cartao VARCHAR(50),
numero_cartao INTEGER,
cvv INTEGER,
validade DATE,
cartao_id serial PRIMARY KEY,
cliente_fid INTEGER
);

CREATE TABLE servico_descricao (
servico_fid INTEGER,
valor MONEY,
foto VARCHAR(40),
unidade VARCHAR(30),
usuario_fid INTEGER,
servico_opcao VARCHAR(100),
minitexto VARCHAR(200),
descricao_id SERIAL PRIMARY KEY
);

CREATE TABLE bairro (
bairro VARCHAR(50),
cidade_fid INTEGER,
bairro_id SERIAL PRIMARY KEY
);

CREATE TABLE pessoa (
usuario VARCHAR(50),
nome VARCHAR(50),
num_casa INTEGER,
contato_fid INTEGER,
senha VARCHAR(40),
servico_fid INTEGER,
email VARCHAR(50),
cpf_id INTEGER PRIMARY KEY,
endereco_fid INTEGER,
descricao_fid INTEGER,
rg INTEGER
);

CREATE TABLE estado (
sigla VARCHAR(2),
estado_id SERIAL PRIMARY KEY
);

CREATE TABLE cidade (
cidade VARCHAR(50),
estado_fid INTEGER,
cidade_id SERIAL PRIMARY KEY,
FOREIGN KEY(estado_fid) REFERENCES estado (estado_id)
);

CREATE TABLE servico (
servico_id SERIAL PRIMARY KEY,
servico_oferecido VARCHAR(100)
);

CREATE TABLE endereco (
cep_fid INTEGER,
endereco_id SERIAL PRIMARY KEY,
usuario_fid INTEGER,
FOREIGN KEY(cep_fid) REFERENCES cep (cep_id)
);

CREATE TABLE servico_contratado (
usuario_fid INTEGER,
prestador_fid INTEGER,
servico_fid INTEGER,
servico_descricao_fid INTEGER,
FOREIGN KEY(usuario_fid) REFERENCES pessoa (cpf_id),
FOREIGN KEY(prestador_fid) REFERENCES pessoa (cpf_id),
FOREIGN KEY(servico_fid) REFERENCES servico (servico_id)
);

ALTER TABLE cep ADD FOREIGN KEY(bairro_fid) REFERENCES bairro (bairro_id);
ALTER TABLE contato ADD FOREIGN KEY(usuario_fid) REFERENCES pessoa (cpf_id);
ALTER TABLE avaliacao ADD FOREIGN KEY(prestador_fid) REFERENCES pessoa (cpf_id);
ALTER TABLE avaliacao ADD FOREIGN KEY(cliente_fid) REFERENCES pessoa (cpf_id);
ALTER TABLE avaliacao ADD FOREIGN KEY(servico_fid) REFERENCES servico (servico_id);
ALTER TABLE cartao ADD FOREIGN KEY(cliente_fid) REFERENCES pessoa (cpf_id);
ALTER TABLE bairro ADD FOREIGN KEY(cidade_fid) REFERENCES cidade (cidade_id);
ALTER TABLE pessoa ADD FOREIGN KEY(servico_fid) REFERENCES servico (servico_id);
ALTER TABLE pessoa ADD FOREIGN KEY(endereco_fid) REFERENCES endereco (endereco_id);





