<h1 align="center">Engenharia de Dados</h1>

## :memo: Descrição
Projetos desenvolvidos a partir do curso de Formação Engenharia de Dados: Domine Big Data! do professor Fernando Amaral.

## :books: Projeto 1
* <b>Descrição</b>: Grande parte da rotina de um Engenheiro de Dados é criar consultas com SQL, portanto, criar um Banco de Dados utilizando Amazon Redshift e realizar as consultas SQL.

* <b>Etapas:</b>
  *  Criar um Cluster Redshift;
  *  Criar Banco de Dados e sua estrutura a partir do script database.sql;
  *  Criar credenciais para Copy;
  *  Fazer upload dos arquivos csv para um Bucket S3;
  *  Executar copy.sql para carregar os dados;
  *  Executar as consultas SQL propostas em cada Atividade.

## :wrench: Tecnologias utilizadas
* Amazon Redshift;
* Amazon S3;
* SQL.

## :books: Projeto 2
* <b>Descrição</b>: Criar um sistema que processa dados de 3 sensores de um parque eólico. Os sensores são:
  * Power Factor
  * Temperature Battery
  * Hydraulic Prepressure

* <b>Etapas:</b>
  * Criar os produtores em Python que simule os 3 sensores;
  * Criar um Kinesis Data Stream, onde vai receber os produtores a cada 10 segundos;
  * Após receber os produtores o Kinesis Data Firehouse fará a entrega a cada 60 segundos armazenando em um Bucket S3;
  * Criar um database no Glue, onde atraves do Glue Crawler, pegará os dados entregues e armazenados no S3 e criará uma tabela, gerando um Glue Catalog. Essa tabela tera as seguintes colunas:
     * Id - identificador
     * Data - dados dos sensores
     * Type - tipo do sensor (Power Factor, Temperature Battery, Hydraulic Prepressure)
     * Timestamp - data e hora
     * Partition - partições em que os dados foram armazenados
  * Com a tabela criada, o Glue Job vai pegar essa tabela que vai estar em formato JSON e colocará em um DW (armazém de dados) que será um bucket S3;
  * E pra finalizar utilizar o Amazon Athena para consultar os dados, realizando consultas SQL por exemplo.

<div align="center">
<img src="https://user-images.githubusercontent.com/75429324/219446352-e1ae2447-508b-460f-ad51-26eb2f3bbbb4.jpg" width="500px" />
</div>


## :wrench: Tecnologias utilizadas
* Python;
* Amazon S3;
* Amazon Kinesis;
* Amazon Glue;
* Amazon Athena;
* SQL.
