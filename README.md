# TRABALHO 01:  I Do, App de Serviços
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>

Higor Martins Rebello: hmrebello.higor@gmail.com<br>
Icaro Gandine: icarog28@gmail.com<br>
Tadeu da Penha Moraes Junior: tadeu_junior@outlook.com<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>

Com a necessecidade das pessoas de buscar pequenos serviços de qualidade e de boa indicação, pensamos o I Do, um aplicativo onde o usuário busque um serviço desejado e através de uma lista de prestadores de serviço ele possa ver sua reputação, valor de trabalho, qualidade de serviço avaliação, valor, pontualidade e um relatório de serviços acionados pelo usuário e serviços feitos pelo prestador. O prestador de serviço também tem a opção de escolher se ele vai cobrar um preço fixo para qualquer atividade ou combinar o preço diretamente com quem requisita o serviço.<br>


### 3.MINI-MUNDO<br>

Ao instalar o aplicativo o usuário faz um cadastro, com seu nome, endereço e adiciona um cartão de crédito (opcional) para pagamento do serviço que desejar. Para prestar um serviço o usuário também realiza um cadastro com seu nome, telefone e serviços que serão prestados. O aplicativo também tem um sistema de contato próprio (chat) entre o prestador do serviço e quem solicita, assim, quando o prestador receber uma solicitação, ele entrará em contato com o contratante para tratar dos demais detalhes do contrato.<br>

Antes de mandar a solicitação, o requisitante tem acesso a uma tela que mostra algumas informações sobre o prestador como preço, localização, média das avaliações e fotos de serviços anteriores realizados (caso as mesmas sejam postadas pelo prestador). Após receber a solicitação o prestador tem acesso a uma tela mostrando a localização do requisitante, podendo assim aceitar o serviço e entrar em contato com o requisitante ou apenas recusar o serviço. Se o prestador não aceitar a solicitação, o contato é finalizado. Caso seja aceito, o serviço é feito, após o serviço o usuário escolhe a forma de pagamento, avalia o serviço e o prestador de serviço também avalia o contratante.<br>

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

  https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/I%20do.pdf



#### 4.1 TABELA DE DADOS DO SISTEMA <br>
  https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/arquivos/campos%20I%20do.ods
    
    
#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?

    O aplicativo pode oferecer um relatório tanto para o usário, como para o prestador de serviço.
    O usuário pode ver um relatório de serviços contratados que pode servir de lembrete de um serviço que ele contratou.
    Já pra o prestador de serviço, o relatório serve para ele ver seu redimento com o aplicativo.
    
    Os principais relatórios que poderão ser obtidos por meio do sistema proposto são:
   
    1- Relatório de Clientes;
    2- Relatório de Prestadores de Serviço;
    3- Relatório de Serviços oferecido; 
    4- Relatório de Serviços contratados;
    5- Relatória de Serviços Realizados;
    6- Relatório de Serviços de um estado;
    7- Relatório de Métodos de pagamento utilizados;
    
    
    
    
    
    
>## Marco de Entrega 01 em: (Data definida no cronograma)<br>

### 5.MODELO CONCEITUAL<br>
        
![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/modelo_concetuall_IDO.jpg "Modelo Conceitual")
    
        
    
#### 5.1 Validação do Modelo Conceitual
    NETIFES: Ana Carorlina Cebin, Matheus Kleber Barbosa, Jardielma
    [Grupo02]: [Nomes dos que participaram na avaliação]

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
   
        - contato_id: campo que armazena um número de identificação da tabela contato;
        - celular: campo que armazena numero do celular do usuário;
        - telefone: campo que armazena numero de telefone do usuário;
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
        -prestador_id: campo de chave estrangeira, para identificação do prestador de serviço.
        
### 6	MODELO LÓGICO<br>
![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/modelo_logico_IDO.jpg "Modelo Lógico")

>## Marco de Entrega 02 em: (Data definida no cronograma)<br>

### 7	MODELO FÍSICO<br>
     https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/arquivos/criacao%20de%20tabela%20ido.sql

       
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES <br>
   Tabela Avaliacão <br>
   https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/arquivos/avaliacao_isert.sql <br>
    
   Tabela Bairro <br>
   https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/arquivos/bairro_insert.sql <br>
   
   Tabela Cartão <br>
   https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/arquivos/cartao_insert.sql <br>
   
   Tabela Cep <br>
   https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/arquivos/cep_insert.sql <br>
   
   Tabela Cidade <br>
   https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/arquivos/cidade_insert.sql <br>
   
   Tabela Contato <br>
   https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/arquivos/contato_insert.sql <br>
   
   Tabela Endereço <br>
   https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/arquivos/endereco_insert.sql <br>
   
   Tabela Estado <br>
   https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/arquivos/estado_insert.sql <br>
   
   Tabela Pessoa <br>
   https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/arquivos/pessoa_insert.sql <br>
   
   Tabela Serviço Contratado <br>
   https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/arquivos/servico_contratado.sql <br>
   
   Tabela Serviço Descrição <br>
   https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/arquivos/servico_descricao.sql <br>
   
   Tabela Serviço <br>
   https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/arquivos/servico_insert.sql<br>
   
   
   
#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
  BackuP<br>
   https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/arquivos/backup_ido.sql <br>
   
#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS <br>
     https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/arquivos/drop_table.sql <br>



### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
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

   SELECT * FROM contato; <br>
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/contato.png)<br>
   
   SELECT * FROM pessoa; <br>
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/pessoa.png)<br>
  
   SELECT * FROM contato; <br>
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/contato.png)<br>
   
   SELECT * FROM servico; <br>
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/contato.png)<br>
   
   SELECT * FROM servico_contratado; <br>
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/servico_contratado.png)<br>
   
   SELECT * FROM servico_descricao; <br>
   ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/servico_descricao.png)<br>   
   
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
    SELECT * FROM pessoa WHERE cpf_id = 123456;; <br>
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
  ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/contato.png)<br>
  
  SELECT * FROM pessoa where email ilike 't%';<br>
  ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/likeemailt.png)<br>
  
  SELECT * FROM pessoa where email like '_e%';<br>
  ![Alt text](https://github.com/BD1-IDO-Higo-Icaro-Tadeu/trab01/blob/master/images/pessoa_likenomeE.png)<br>

>## Marco de Entrega 03 em: (Data definida no cronograma)<br>
    
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
#### 9.7	CONSULTAS COM GROUP BY E FUNÇES DE AGRUPAMENTO (Mínimo 6)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>
### 11	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho
        
### 12   DIFICULDADES ENCONTRADAS PELO GRUPO<br>
### 13   TRABALHO DE MINERAÇÃO DE DADOS
        a) captura das informaçõs
        b) integração com banco de dados em desenvolvimento
        c) atualização da documentação do trabalho incluindo a mineração de dados
        
### 13  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/

### 14 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.
    
>## Marco de Entrega 04/Entrega Final em: (Data definida no cronograma)<br>
    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://sis4.com/brModelo/brModelo/download.html
