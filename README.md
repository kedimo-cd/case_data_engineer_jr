# Proposta de Solução Case Técnico

# 1. Objetivo

* Realizar 4 etapas com o objetivo de gerar insights valiosos para o négocio, e ao final responder 2 perguntas sobre o neg´scios.

  ## 1.1 ETAPAS A SEREM EXECUTADAS
  
  ## 1ª ANÁLISE DE DADOS
  * Carregar Conjuntos de Cados
  * Realizar Análise Exploratória
  * Gerar Insights
  ## 2ª TRANSFORMAÇÃO DE DADOS
  * Realizar Transformações Necessárias
  * Combinar Conjuntos de Dados
  ## 3ª VISUALIZAÇÃO DE DADOS
  * Criar Visualizações para Validação dos Insights
  ## 4ª BANCO DE DADOS
  * Realizar Carga de Dados Combinados no MYSQL.
  * Responder Perguntas de Negócios
 
  ## Perguntas de Negócios:
  * Qual o valor máximo vendido por mês durante o ano de 2024?
  * Quais foram os produtos mais vendidos durante o primeiro semestre de 2024?
 
  ## 1.2 Tecnologias utilizadas neste Projeto
  * Para este projeto trabalharemos com linguagem Python para realizar as 3 primeiras etapas acima. Com isso, devemos incluir o uso de Bibliotecas para manipulação e visualização de dados.
  * Já para a etapa número 4, vamos utilizar Linguagem SQL. Para isso, vamos conectar localmente ao banco de dados MYSQL e por fim realizar consultas atraves da interface do MYSQL WorkBench.
*******


# 2. Coleta de Dados

Os Dados de vendas e clientes foram fornecidos em formato CSV e serão carregados localmente. 

## Dicionário Tabela de Vendas

| Atributos     | Descrição                                         |
| ------------- | ------------------------------------------------- |
| order_id      | Identificador único do pedido                     |
| product_name  | Nome do produto vendido                           |
| quantity      | Quantidade de unidades vendidas                   |
| unit_price    | Preço unitário do produto                         |
| cliente_id    | Identificador único do cliente                    |
| order_date    | Data em que o pedido foi realizado                |

## Dicionário Tabela de Clientes

| Atributos | Descrição |
| --------- | --------- |
| id_cliente | Identificador único do cliente |
| nome       | Nome do cliente |
| sobrenome  | Sobrenome do cliente |
| email      | Endereço de e-mail do cliente |
| telefone   | Número de telefone do cliente |
| endereço   | Endereço residencial do cliente |
| numero     | Número da residência do cliente |


# 3. ANALISE EXPLORATÓRIA

 Nesta etapa foi realizado o seguinte:

- **_Visualização dos Dados_**: Os dados Foram visualizados atraves do formato tabular Dataframe.
- **_Compreensão_**: Entendemos quais tipos de dados há em cada coluna.
- **_Proura por Dados Errados_**: Procuramos por dados nulos, registros duplicaos e verificamos a integridade dos dados.
- **_Geração de Insights_**: Procuramos extrair informações que façam sentido e que condizem com a realidade do negócio.


# 4. TRANSFORMAÇÃO DE DADOS

 Nesta etapa foi realizado o seguinte:

- **_Desnormalização_**: Processo onde unimos as duas tabelas em uma unica tabela.
- **_Feature Engeneering_**: Criação de novas colunas.

- # 5. VISUALIZAÇÃO DE DADOS

## 5.1. Visualização de Insights gerados


### Insight 1

![alt text](https://github.com/kedimo-cd/case_data_engineer_jr/blob/main/img/insght1.png)
- A Média de Receita total das vendas é 66.4. O valor máximo em vendas foi 120 e o minimo foi 20, o que condiz com o produto de menor valor disponível.
  
- Insght 1: Correto, o grafico valida o valor 20 para valor minimo de vendas e 120 para valor máximo. També é possivel notar que a média está em 66.45
  *******
![alt text](https://github.com/kedimo-cd/case_data_engineer_jr/blob/main/img/insight2.png)
-  A Média de Preços unitarios dos produtos é de 28.6. Já o valor minimo é 20 e o máximo é de 40 o que pode indicar uma variação significativa nos preços dos produtos, indicando uma gama diversificada de produtos com diferentes faixas de preço.
  
- Insght 2: Correto, o gráfico mostra que os preço unitários varim entre 20 e 40, com média de 28.6.
  *******
  ![alt text](https://github.com/kedimo-cd/case_data_engineer_jr/blob/main/img/insght3.png)
-   Todas as datas de pedidos estão dentro do intervalo esperado (ano de 2024), o que indica que os dados de datas são consistentes e apropriados.
  
-   Insght 3: Correto, a tabela descritiva valida que a quantidade pedidos máxima foi 100 'order_id' e que a quantidade máxima de receita total foi 120, assim como descrito no insight numero 1.
  *******
  
# 6. BANCO DE DADOS

Nesta etapa foi realizado o seguinte:

- **_Conexão ao Banco de Dados_**: Criamos uma coneção com o MYSQL para carregar a tabela de dados transformados e desnomalizados.
- **Carga dos Dados**: Carregamos os dados para o schema 'analytics' na tabela 'fact_analytics'.
- **Entrega das Perguntas**: Realizamos consultas ao MYSQL e respondemos as perguntas de negócios.


### PERGUNTA 1
- Qual o valor máximo vendido por mês durante o ano de 2024?
  ![alt text](https://github.com/kedimo-cd/case_data_engineer_jr/blob/main/img/Pergunta_1.png)
- Insight: Notamos um aumento exponêncial nas vendas do mês de março (3) ao mês de maio (5).
- Porém, há uma queda significativa nas vendas do mês de maio (5) para o mês de junho (6)
    *******

### PERGUNTA 2
- Qual o valor máximo vendido por mês durante o ano de 2024?
  ![alt text](https://github.com/kedimo-cd/case_data_engineer_jr/blob/main/img/Pergunta_2.png)
- Insight: Notamos um aumento exponêncial nas vendas do mês de março (3) ao mês de maio (5).
- Porém, há uma queda significativa nas vendas do mês de maio (5) para o mês de junho (6)

