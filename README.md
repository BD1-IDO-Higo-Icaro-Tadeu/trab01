# TRABALHO 01:  I Do, App de Serviços
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>

Higor Martins Rebello: hmrebello.higor@gmail.com<br>
Icaro Gandine: icarog28@gmail.com<br>
Tadeu da Penha Moraes Junior: tadeu_junior@outlook.com<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>

Com a necessecidade da busca por serviços de qualidade e com boa indicação, pensamos o I Do, um aplicativo onde o usuário busque um serviço desejado e através de uma lista de prestadores de serviço ele possa ver sua reputação, valor do serviço, qualidade do serviço através da avaliação de outros usuários, pontualidade, relatório de serviços acionados pelo usuário e serviços feitos pelo prestador. O prestador de serviço tem a opção de escolher se ele vai cobrar um preço fixo para qualquer atividade ou combinar o preço diretamente com o contratante. A ideia é ser uma ponte que facilite e auxilie esta interação entre as partes.<br>


### 3.MINI-MUNDO<br>

Ao instalar o aplicativo o usuário faz um cadastro, com seu nome, endereço e adiciona um cartão de crédito (opcional). Para prestar um serviço o usuário também realiza um cadastro com seu nome, telefone e serviços que serão prestados. O aplicativo também tem um sistema de contato próprio (chat) entre o prestador do serviço e quem solicita, assim, quando o prestador receber uma solicitação, ele entrará em contato com o contratante para tratar dos demais detalhes do contrato.<br>

Antes de mandar a solicitação, o requisitante tem acesso a uma tela que mostra algumas informações sobre o prestador como preço, localização, média das avaliações e fotos de serviços anteriores realizados (caso as mesmas sejam postadas pelo prestador). Após receber a solicitação o prestador tem acesso a uma tela mostrando a localização do requisitante, podendo assim aceitar o serviço e entrar em contato com o requisitante para avaliar e continua ou se recusa o serviço. Se o prestador não aceitar a solicitação, o contato é finalizado. Caso seja aceito, o serviço é feito, após o serviço o usuário escolhe a forma de pagamento, avalia o serviço e o prestador também avalia o contratante.<br>

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

  https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/I%20do.pdf



#### 4.1 TABELA DE DADOS DO SISTEMA <br>
  https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/arquivos/campos%20I%20do.ods
    
    
#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?

    O aplicativo pode oferecer um relatório tanto para o usário que busca o serviço, como para o usuário que presta o serviço.
    O usuário pode ver um relatório de serviços contratados, pagamentos efetuados, avaliações feitas.
    Já pra o prestador de serviço, histórico de pagamentos recebidos, clientes atendidos, rendimento, etc.
    
    Os principais relatórios que poderão ser obtidos por meio do sistema proposto são:
   
    1- Relatório de Clientes;
    2- Relatório de Prestadores de Serviço;
    3- Relatório de Serviços oferecido; 
    4- Relatório de Serviços contratados;
    5- Relatória de Serviços Realizados;
    6- Relatório de Serviços de um estado;
    7- Relatório de Pagamentos Efetuados;
    8- Relatório de Pagamentos Recebidos;
    9- Relatório de Solicitações;
    
    
    
    
    
>## Marco de Entrega 01 em: (Data definida no cronograma)<br>

### 5.MODELO CONCEITUAL<br>
        
![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/modelo_concetuall_IDO.jpg "Modelo Conceitual")
    
        
    
#### 5.1 Validação do Modelo Conceitual
    NETIFES: Ana Carolina Cebin, Matheus Kleber Barbosa, Jardielma Queiroz
    

#### 5.2 DECISÕES DE PROJETO
 Não houve nenhuma decisão.
    
 

#### 5.3 DESCRIÇÃO DOS DADOS <br>

   PESSOA: tabela que contém as informações de uma conta do aplicativo, composta pelos os campos:
    
        - nome: campo que armazena o nome completo do usuário;
        - senha: campo que armazena a senha da conta no iDo;
        - servico_fid: campo de chave estrangeira que indica qual profissao é oferecida;
        - usuario: campo que armazena um "nome de usuário" de uma conta no iDo;
        - cpf_id: campo que armazena o CPF de um usuário, usado como chave primária já que duas pessoas não podem ter o mesmo CPF;
        - email: campo que armazena o email do usuário;
        - num_casa: armazena o numero da casa do usuário;
        - contato_fid: campo de chave estrangeira que armazena contatos de telefone ou celular;
        - endereco_fid: campo de chave estrangeira com endereço, composto por bairro, cep, cidade e estado;
        - descricao_fid: campo de chave estrangeira que armazena detalhes sobre o serviço oferecido do usuário.
    
   CARTAO: tabela que armazena as informações do cartão de um usuário, composta pelos campos:
   
        - nome_cartao: campo que armazena o nome do titular do cartão;
        - numero_cartao: campo que armazena o número do cartão;
        - ccv: campo que armazena o código de segurança do cartão (CCV);
        - validade: campo que armazena a data de validade do cartão;
        - cartao_id: campo que armazena um número de identificação para o cartão, usado para identificar um cartão mais facilmente,               usado como chave primária;
        - usuario_fid: campo de chave estrangeira, para identificação do dono do cartao. 
   
   CONTATO: tabela que armazena as informações de contatos do usuário, composta pelos campos:
  
        - tipo_contato: campo que armazena tipo de contato armazenado;
        - contato: campo que armazena informações do contato;
        - usuario_fid: campo de chave estrangeira, para identificação do usuário na tabela contato.
    
   ENDERECO: tabela que armazena as informações do endereço do usuário, composta pelos campos:
   
        - endereco_id: campo que armazena um número de identificação da tabela endereço;
        - usuario_fid: campo de chave estrangeira, para identificação do usuário na tabela endereço;
        - cep_fid: campo de chave estrangeira, para identificação do cep na tabela endereco.
        
   CEP: tabela que armazena as informações do cep da tabela de endereço, composta pelos campos:
   
        - cep_id: campo que armazena um número de identificação da tabela endereço;
        - rua: campo que armazena o nome da rua; 
        - bairro_fid: campo de chave estrangeira, para identificação do bairro na tabela cep.   

   BAIRRO: tabela que armazena as informações do bairro da tabela de cep, composta pelos campos:
   
        - bairro_id: campo que armazena um número de identificação da tabela bairro;
        - bairro: campo que armazena o nome do bairro; 
        - cidade_fid: campo de chave estrangeira, para identificação do cidade na tabela bairro.
        
   CIDADE: tabela que armazena as informações da cidade da tabela de bairro, composta pelos campos:
   
        - cidade_id: campo que armazena um número de identificação da tabela cidade;
        - cidade: campo que armazena o nome da cidade; 
        - estado_fid: campo de chave estrangeira, para identificação do estado na tabela cidade. 

   ESTADO: tabela que armazena as informações do estado da tabela de cidade, composta pelos campos:
   
        - estado_id: campo que armazena um número de identificação da tabela estado;
        - sigla: campo que armazena o sigla do estado.
     
   SERVICO_CONTRATADO: tabela que armazena as informações de serviços contratado pelo usuario, composta pelos campos:
   
        - usuario_fid: campo de chave estrangeira para identificação do usuario que contratou um serviço;
        - prestador_fid: campo de chave estrangeira para identificação do usuario que prestou um serviço;
        - servico_fid: campo de chave estrangeira que indica qual serviço foi oferecido.
        
  SERVICO: tabela que armazena as informações de serviços oferecido pelos usuarios, composta pelos campos:
   
        - servico_fid: campo de chave estrangeira, para identificação do usuário que contratou um serviço;
        - servico_oferecido: campo que armazena o nome do serviço oferecido.        
  
  SERVICO_DESCRICAO: tabela que armazena as informações de serviços oferecido pelo usuario, composta pelos campos: 
   
        - usuario_fid: campo de chave estrangeira, para identificação de um usuario que contratou um serviço;
        - servico_opcao: campo de chave estrangeira, para identificação do usuario que prestou um serviço;
        - minitexto: campo de chave estrangeira que indica qual serviço foi oferecido;
        - descricao_id: campo que armazena a identificação da tabela servico_descricao;
        - unidade: campo que armazena o tipo de unidade do serviço oferecido;
        - foto: campo que armazena uma foto do serviço feito pelo prestador;
        - valor: armazena o valor do serviço ou NULL caso seja a combinar;
        - servico_fid: campo que armazena chave estrangeira que indica o tipo de serviço oferecido.
        
   AVALIACAO: tabela armazena as informações de serviços contratado pelo usuário, composta pelos campos: 
   
        - cliente_fid: campo de chave estrangeira, para identificação do usuário que contratou um serviço;
        - comentario: campo que armazena comentários feitos por um usuário (para avaliar um serviço);
        - nota: campo armazena nota avaliada pelo usuário;
        - prestador_id: campo de chave estrangeira, para identificação do prestador de serviço.
        
### 6	MODELO LÓGICO<br>
![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/modelo_logico_IDO.jpg "Modelo Lógico")

>## Marco de Entrega 02 em: (Data definida no cronograma)<br>

### 7	MODELO FÍSICO<br>
   https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/arquivos/criacao%20de%20tabela%20ido.sql

       
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES <br>
   https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/arquivos/all%20inserts.sql <br>
   
   
   
#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
  Script para criação do Banco no pgAdmin<br>
   https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/arquivos/backup_ido.sql <br>
   
#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS <br>
   
   https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/arquivos/drop_table.sql <br>



### 9	TABELAS E PRINCIPAIS CONSULTAS<br><br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
   SELECT * FROM avaliacao;<br>
    
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/avaliacao.png)<br>
   
   SELECT * FROM bairro; <br>
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/bairro.png)<br>

   SELECT * FROM cartao; <br>
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/cartao.png)<br>
   
   SELECT * FROM cep; <br>
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/cep.png)<br>   

   SELECT * FROM cidade; <br>
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/cidade.png)<br>

   SELECT * FROM contato; <br>
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/contato.png)<br>
   
   SELECT * FROM endereco; <br>
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/endereco.png)<br>
   
   SELECT * FROM estado; <br>
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/estado.png)<br>
   
   SELECT * FROM pessoa; <br>
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/pessoa.png)<br>
   
   SELECT * FROM servico; <br>
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/contato.png)<br>
   
   SELECT * FROM servico_contratado; <br>
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/servico_contratado.png)<br>
   
   SELECT * FROM servico_descricao; <br>
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/servico_descricao.png)<br>   
   
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
   SELECT * FROM pessoa WHERE cpf_id = 123456;<br>
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/pessoa_where.png)<br>
   
   SELECT * FROM estado where estado_id >5 and estado_id <= 12;<br>
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/estado_where.png)<br>
   
   SELECT * FROM endereco WHERE cep_fid < 29000000;<br>
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/cep_where.png)<br>
   
   SELECT * FROM servico_contratado WHERE prestador_fid = 666666;<br>
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/servico_contratado_where.png)<br>   
   
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 6)
   SELECT *  FROM servico_descricao WHERE valor >= '10' and valor < '100'; <br>
    ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/servico_descricao_logico.png)<br> 
   
   SELECT * FROM avaliacao WHERE nota > 3 or nota = 5;<br>
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/avaliacao_logico.png)<br>   

   SELECT (valor/2) AS metade FROM servico_descricao;<br>
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/servico_descricao_metade_artimetico.png)<br>
   
   SELECT (valor+'100') AS maiscem FROM servico_descricao;<br>
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/servico_descricao_artimeticomaiscem.png)<br>
   
     
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 4) <br>
  SELECT * FROM pessoa where nome like '%_a'; <br>
  ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/pessoa_likenome.png)<br>
  
  SELECT * FROM pessoa where nome ilike 'd%';<br>
  ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/pessoanomeIilke.png)<br>
  
  SELECT * FROM pessoa where email ilike 't%';<br>
  ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/likeemailt.png)<br>
  
  SELECT * FROM pessoa where email like '_e%';<br>
  ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/pessoa_likenomeE.png)<br>
    
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
   update pessoa set email =  'tadeu_junior@hotmail.com' where nome = 'Tadeu Junior';<br>
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/update%20email.png)<br>
   
   update cartao  set nome_cartao = 'Lucas Gabriel Irinel' where nome_cartao = 'Lucas G Irinel';
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/update%20cartao.png)<br>
   
   update  servico_descricao set valor = '150,00' where usuario_fid = 666666;<br>
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/update%20servico%20descricao.png)<br>
   
   delete  from cartao where cartao_id = 9;<br>
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/delete%20cartao.png)<br>
   
   delete from servico_contratado where usuario_fid = 222222;<br>
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/servico%20contratado%20delete.png)<br>
   
   update cep set rua = 'Rua Neutra' where cep_id = 29000000;<br>
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/update%20cep.png)<br>
   
   
#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
  select * from pessoa 
  inner join cartao on (pessoa.cpf_id = cartao.cliente_fid)
  order by pessoa.usuario asc;<br>
  ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/innerjoin%20pessoa_cartao%20orderby.png)<br>
  
  select * from cidade
  inner join estado on (cidade.estado_fid = estado.estado_id)
  order by estado.sigla desc;<br>
  ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/innerjoin%20estado_cidade%20orderby.png)<br>
  
  select * from cartao 
  inner join pessoa on ( pessoa.cpf_id = cartao.cliente_fid)
  order by cartao.validade asc;<br>
  ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/innerjoin%20pessoa_cartao_orderbyValidade.png)<br>
  
  select * from endereco
  inner join cep on (endereco.cep_fid = cep.cep_id) 
  order by cep.rua desc;<br>
  ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/innerjoin%20endereco_cep%20orderby.png)<br>
  
  select servico.servico_oferecido, pessoa.nome from pessoa 
  inner join servico on (servico.servico_id = pessoa.servico_fid)
  order by servico.servico_oferecido;<br>
  ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/innerjoin%20pessoa_servico%20ordeby.png)<br>
  
  select pessoa.nome, endereco.cep_fid from pessoa 
  inner join endereco on (endereco.endereco_id = pessoa.endereco_fid)
  order by endereco.endereco_id;<br>
  ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/endereco%20_pessoa%20orderby.png)<br>
   
#### 9.7	CONSULTAS COM GROUP BY E FUNÇES DE AGRUPAMENTO (Mínimo 6)<br>
   select pessoa.email from pessoa
   inner join contato on (pessoa.cpf_id =  contato.usuario_fid) 
   group by pessoa.email;<br>
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/innerjoin_grounpby%20pessoa_contato.png)<br>
   
  select avaliacao.prestador_fid from avaliacao 
  inner join pessoa on (pessoa.cpf_id = avaliacao.cliente_fid)
  group by avaliacao.prestador_fid;<br>
  ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/innerjoin_grounpby%20pessoa_avaliacao.png)<br>

  select servico_descricao.servico_fid from servico_descricao
  inner join servico on (servico_descricao.servico_fid = servico.servico_id)
  group by servico_descricao.servico_fid;<br>
  ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/innerjoin_grounpby%20servico_descricao_servico.png)<br>

  select endereco.usuario_fid from pessoa
  inner join endereco on (pessoa.endereco_fid = endereco.endereco_id)
  group by endereco.usuario_fid;<br>
  ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/innerjoin_grounpby%20pessoa_endereco.png)<br>

  select endereco.usuario_fid from pessoa
  inner join endereco on (pessoa.endereco_fid = endereco.endereco_id)
  group by endereco.usuario_fid
  having endereco.usuario_fid > 555555;<br>
  ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/innerjoin_grounpby%20pessoa_endereco.png_having.png.png)<br>

  select avaliacao.nota  from avaliacao 
  inner join pessoa on (pessoa.cpf_id = avaliacao.cliente_fid)
  group by avaliacao.nota
  having avaliacao.nota >= 3a);<br>
  ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/innerjoin_grounpby%20pessoa_avaliacao_nota_having.png);<br>
  
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
  select pessoa.nome, pessoa.cpf_id, servico_contratado.prestador_fid from pessoa 
  Right outer Join servico_contratado on (pessoa.cpf_id = servico_contratado.prestador_fid);<br>
  ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/rigthjoin%20pessoa_servico_contratado.png)<br>

  select pessoa.nome, pessoa.cpf_id, servico_contratado.prestador_fid from pessoa 
  Left outer Join servico_contratado on (pessoa.cpf_id = servico_contratado.prestador_fid);<br>
  ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/Leftjoin%20pessoa_servico_contratado.png)<br>

  select pessoa.nome,contato.tipo_contato,contato.contato from contato 
  Right outer Join  pessoa on (pessoa.cpf_id = contato.usuario_fid) where contato.tipo_contato = 'telefone';<br>
  ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/rigthjoin%20pessoa%20contato.png)<br>
  
  select pessoa.nome, avaliacao.nota from avaliacao 
  Left outer Join pessoa on (pessoa.cpf_id = avaliacao.cliente_fid) where avaliacao.nota >= 3.5;<br>
  ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/leftouterjoin.PNG)<br>
  
#### 9.9	CONSULTAS COM SELF JOIN E VIEW <br>
  create view contato_usuario as select pessoa.nome,contato.tipo_contato,contato.contato from contato 
  inner Join  pessoa on (pessoa.cpf_id = contato.usuario_fid);
  select * from contato_usuario;<br>
  ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/view%20contato_usuario.png)<br>

  create view servico_oferecido as select servico,pessoa.nome from pessoa 
  inner join servico on (pessoa.servico_fid = servico.servico_id) where servico_fid >1;
  select * from  servico_oferecido;<br>
  ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/view%20servico_oferecido.png)<br>

  create view usuario_email_tel as select pessoa.nome as usuario,pessoa.email,contato.contato from pessoa
  inner join contato on (pessoa.cpf_id =  contato.usuario_fid) where tipo_contato = 'telefone';
  select * from usuario_email_tel;<br>
  ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/view%20usuario_email.png)<br>


  create view localidade as select estado, bairro, cidade from cidade
  inner join estado on (cidade.estado_fid = estado.estado_id)
  inner join bairro on (bairro.bairro_id = cidade.cidade_id);
  select * from localidade;<br>
  ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/view%20localidade.png)<br>

  create view prestadores_servico as select servico.servico_oferecido, pessoa.nome from pessoa 
  inner join servico on (servico.servico_id = pessoa.servico_fid);
  select * from prestadores_servico;<br>
  ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/prestadores_servico.png)<br>

#### 9.10	SUBCONSULTAS <br>
  select pessoa.nome,contato.tipo_contato, contato.contato from contato
  inner join pessoa on (pessoa.cpf_id =  contato.usuario_fid) where  contato.tipo_contato in (select tipo_contato from contato where       tipo_contato = 'telefone');<br>
  ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/subconsullta%20tipocontato.png)<br>
  
  select pessoa.nome,servico.servico_oferecido from servico
  inner join pessoa on (pessoa.servico_fid =  servico.servico_id) where  servico.servico_oferecido in (select servico_oferecido from       servico  where  servico_oferecido  <> 'cliente');<br>
  ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/subconsullta%20servicooferecido.png)<br>

  select pessoa.nome, servico.servico_oferecido as servico_contratado, avaliacao.nota from avaliacao
  inner join pessoa on (avaliacao.cliente_fid = pessoa.cpf_id)
  inner join servico on (avaliacao.servico_fid = servico.servico_id)where avaliacao.nota in ( select nota from servico where nota <= 3);<br>
  ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/subconsullta%20servicocontratadonota.png)<br>
  
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>
  https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/Apresenta%C3%A7%C3%A3o%20IDO.pdf<br>
### 11	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        Para executar o back up do banco IDo, basta pegar o arquivo na secção 8.2 e  executar o script no PGAdmin.   

        
### 12   DIFICULDADES ENCONTRADAS PELO GRUPO<br>

   * Divisão de tarefas;
   * Encontrar tabela para left Join, pois quase todas fazem ligação;<br>
   
### 13   TRABALHO DE MINERAÇÃO DE DADOS <br>
        a) captura das informaçõs
        b) integração com banco de dados em desenvolvimento
        c) atualização da documentação do trabalho incluindo a mineração de dados


### 14 Backup completo do banco de dados postgres 

   https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/backupIdo
    
>## Marco de Entrega 04/Entrega Final em: (Data definida no cronograma)<br>
