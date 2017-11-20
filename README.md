# PickFantasy

# Sumário

### 1.COMPONENTES<br>
Ezequiel F. Mapel: ezequiel.f.mapel@gmail.com<br>
Pedro Henrique T. dos Santos: pedroso.hts@gmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
### INTRODUÇÃO -
&emsp; &emsp; **PickFantasy** é um jogo de esporte fantasia, no qual ações da
vida real influência nos resultados. Um bom exemplo é o CartolaFC. Porém, os resultados
são baseados em jogos de E-Sports(esportes eletrônicos), como por exemplo, <a href="http://br.leagueoflegends.com/pt/" target="_blank">League of Legends</a> ou <a href="https://www.faceit.com/pt/csgo" target="_blank">Counter-Strike GO</a>.
<br>
### MOTIVAÇAO -
&emsp; &emsp; A categoria E-Sports vem crescendo no mercado brasileiro e no mundo. Em 2016 no EUA, a categoria arrecadou cerca de R$ 1,5 bilhões é esperado para 2017 a quantia de cerca de R$ 2,15 bilhões e em 2020, essa quantia pode chegar a R$ 4,3 bilhões. É um fato que o E-Sports, está em um crescimento exponencial e por isso quisemos focar nosso trabalho nesse mundo e algo que o envolve, pode ter uma grande probabilidade de ser bem aceito.

### 3.MINI-MUNDO<br>
&emsp; &emsp; Para fazer parte do Pick Fantasy, primeiramente o usuário terá que fazer um cadastro simples, informando apenas o seu e-mail, uma senha, o seu nome e um apelido que deseja. Caso o usuário já tenha um cadastro, porém esqueceu a senha/usuário, na tela inicial também contem um pedido para lembrete de usuário ou mudança de senha, informando apenas o e-mail cadastrado. Sendo assim, ao logar na sua conta, o usuário encontrará uma tela inicial que contém o seu perfil, os campeonatos que estão acontecendo no momento e também partidas que acontecerão na atual data. Na tela de perfil, o usuário vai encontrar estatísticas da sua conta, como a quantidade de pontos na temporada, quantidade de pontos globais, além da sua posição atual no ranking. Nessa mesma tela também tem acesso à tabela do ranking mais detalhada, que conta com os 10 primeiros colocados e seus respectivos pontos. Ainda no perfil, também encontramos, em uma sub-aba, opções da conta como alteração de apelido, alteração de foto, icone, opção de notificações e etc. E por fim, essa mesma tela, possui uma aba de contato com o suporte do site, para saciar duvidas, enviar sugestões/criticas.
Voltando na página inicial, existe a area de Campeonatos, que contem todos os campeonatos que estão acontecendo no momento. Clicando em algum campeonato, é redirecionado para a tela deste campeonato, que é subdividido em cada fase que este possui (grupos, quartas, semis, final). Em cada fase o usuário pode fazer sua escolha de Melhor Time e Melhor jogador, Pior time e Pior jogador(na sua opinião). Caso ele acerte os palpites, no final da fase ele acumula pontos.
E por fim, a última tela da página inicial é a de partidas, onde o usuário encontrará as partidas que estão acontecendo no dia, podendo apostar em um time que ele ache que será o vencedor. No final da partida, caso acerte, ele acumula pontos.<br>

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

<img src="https://raw.githubusercontent.com/trabpickf/Trabalho01/master/imagens/mockup.png"/>

![Clique aqui!](https://github.com/trabpickf/Trabalho01/tree/master/arquivos/PickEmFantasy.pdf?raw=true "Modelo completo") Para visualizar o modelo completo.

#### 4.1 TABELA DE DADOS DO SISTEMA:
   ![Clique aqui!](https://github.com/trabpickf/Trabalho01/tree/master/arquivos/tabela.ods?raw=true "Tabela CALC") Caso queira acessar a tabela.


### 5.MODELO CONCEITUAL<br>

![Alt text](https://raw.githubusercontent.com/trabpickf/Trabalho01/master/imagens/ModeloConceitual%20-%20(TESTE).png "Modelo Conceitual")

#### 5.1 DESCRIÇÃO DOS DADOS
   ![Clique aqui!](https://github.com/trabpickf/Trabalho01/blob/master/arquivos/descricao_dados.txt "Descrição dos dados") Para acessar a descrição dos dados.

<hr>

### 6	MODELO LÓGICO<br>
![Alt text](https://raw.githubusercontent.com/trabpickf/Trabalho01/master/imagens/ModeloLogico%20-%20(TESTE).png "Modelo Logico")
### 7	MODELO FÍSICO<br>    
![Clique aqui!](https://github.com/trabpickf/Trabalho01/tree/master/arquivos/modelo_fisico.sql "Modelo Físico") Para acessar o script do modelo físico.

### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
![Clique aqui!](https://github.com/trabpickf/Trabalho01/tree/master/arquivos/script_insert.sql "Script INSERT") Para acessar o script do INSERT.


#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS<br>
![Clique aqui!](https://github.com/trabpickf/Trabalho01/tree/master/arquivos/scripts_fisico_insert.sql "Modelo Logico") Para acessar o script. <br>






### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
![Clique aqui! - ](https://github.com/trabpickf/Trabalho01/blob/master/arquivos/tabelas_consultas.sql "Script") Para acessar o script dos comandos abaixo.<br>

#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
SELECT * FROM usuario;<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/tabela%20usuario.PNG" /><br>
SELECT * FROM partida;<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/tabela%20partida.PNG" /><br>
SELECT * FROM campeonatos;<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/tabela%20campeonato.PNG" /><br>
SELECT * FROM time;<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/tabela%20time.PNG" /><br>
SELECT * FROM etapa;<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/tabela%20etapa.PNG" /><br>
SELECT * FROM jogador;<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/tabela%20jogador.PNG" /><br>
SELECT * FROM ranking_temporada;<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/tabela%20ranking_temporada.PNG" /><br>
SELECT * FROM ESCOLHE_E_C_ESCOLHE_USUARIO_TIME_JOGADOR;<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/tabela%20escolha_usuario_time_jogador.PNG" /><br>
SELECT * FROM aposta_usuario_partida_time;<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/tabela%20usuario_partida.PNG" /><br>
SELECT * FROM alcancou;<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/tabela%20alcançou.PNG" /><br>


#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3) <br>
<img src="https://raw.githubusercontent.com/trabpickf/Trabalho01/master/imagens/Consultas/9.2.png" /><br>

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>
<img src="https://raw.githubusercontent.com/trabpickf/Trabalho01/master/imagens/Consultas/9.3.png" /><br>

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3)  <br>
<img src="https://raw.githubusercontent.com/trabpickf/Trabalho01/master/imagens/Consultas/9.4.png" /><br>

#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
<img src="https://raw.githubusercontent.com/trabpickf/Trabalho01/master/imagens/Consultas/9.5.png" /><br>

#### 9.6	CONSULTAS COM JUNÇÃO (Todas Junções)<br>
<img src="https://raw.githubusercontent.com/trabpickf/Trabalho01/master/imagens/Consultas/9.6.png" /><br>

#### 9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>
<img src="https://raw.githubusercontent.com/trabpickf/Trabalho01/master/imagens/Consultas/9.7.png" /><br>

### 9.8 CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
<img src="https://raw.githubusercontent.com/trabpickf/Trabalho01/master/imagens/Consultas/9.8.png" /><br>

### 9.9 CONSULTAS COM SELF JOIN (todas) E VIEW (mais importantes)<br>
### 9.10 SUBCONSULTAS (Mínimo 3) <br>

    Entrega 13/11

### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>
### 11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>

### 12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/

#### Link para BrModelo:
http://sis4.com/brModelo/brModelo/download.html
#### Link para Download do Mysql
https://dev.mysql.com/downloads/file/?id=471661
https://dev.mysql.com/downloads/windows/installer/5.7.html

### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.
