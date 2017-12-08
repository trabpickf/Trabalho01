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

<img src="https://raw.githubusercontent.com/trabpickf/Trabalho01/master/imagens/mockup.png" alt="Mockup"/>

![Clique aqui!](https://github.com/trabpickf/Trabalho01/tree/master/arquivos/PickEmFantasy.pdf?raw=true "Modelo completo" "Modelo Completo") Para visualizar o modelo completo.

#### 4.1 TABELA DE DADOS DO SISTEMA:
   ![Clique aqui!](https://github.com/trabpickf/Trabalho01/tree/master/arquivos/tabela.ods?raw=true "Tabela CALC") Caso queira acessar a tabela.


### 5.MODELO CONCEITUAL<br>

![Alt text](https://github.com/trabpickf/Trabalho01/blob/master/arquivos/ModeloConceitual_2.png?raw=true "Modelo Conceitual")

#### 5.1 DESCRIÇÃO DOS DADOS
   ![Clique aqui!](https://github.com/trabpickf/Trabalho01/blob/master/arquivos/descricao_dados.txt "Descrição dos dados") Para acessar a descrição dos dados.

#### 5.2 DECISÕES DE PROJETO
   **A)** Tabela Partida: Pensamos novamente na forma de guardar o placar da partida. A ideia anterior era salvar em um atributo varchar("3x2"). Contudo, para que as informações venham a ter boas práticas, utilizaremos de dois atributos int(placarTime1, placarTime2) para guardas as informações separadas.<br><br>
   **B)** Tabela Usuário: Não mais será guardado a pontuação direto em um atributo, como pensado no ínicio do projeto. Será guardado em atributos distintos a quantidade de 
acerto por partida(int acertoPartida) e a quantidade de acerto global(int acertoGlobal). A pontuação será mostrada, multiplicando a quantidade de cada atributo por 8(cada acerto equivale a 8 pontos).
<hr>

### 6	MODELO LÓGICO<br>
![Alt text](https://github.com/trabpickf/Trabalho01/blob/master/arquivos/ModeloLogico.png?raw=true "Modelo Logico")
### 7	MODELO FÍSICO<br>    
![Clique aqui!](https://github.com/trabpickf/Trabalho01/tree/master/arquivos/modelo_fisico.sql "Modelo Físico") Para acessar o script do modelo físico.

### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
![Clique aqui!](https://github.com/trabpickf/Trabalho01/tree/master/arquivos/script_insert.sql "Script INSERT") Para acessar o script do INSERT.


#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS<br>
![Clique aqui!](https://github.com/trabpickf/Trabalho01/tree/master/arquivos/scripts_fisico_insert.sql "Scripts") Para acessar o script. <br>






### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
![Clique aqui! - ](https://github.com/trabpickf/Trabalho01/blob/master/arquivos/tabelas_consultas.sql "Script") Para acessar o script dos comandos abaixo.<br>

#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
**SELECT * FROM usuario;**<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/tabela%20usuario.PNG" /><br><br>
**SELECT * FROM partida;**<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/tabela%20partida.PNG" /><br><br>
**SELECT * FROM campeonatos;**<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/tabela%20campeonato.PNG" /><br><br>
**SELECT * FROM time;**<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/tabela%20time.PNG" /><br><br>
**SELECT * FROM etapa;**<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/tabela%20etapa.PNG" /><br><br>
S**ELECT * FROM jogador;**<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/tabela%20jogador.PNG" /><br><br>
**SELECT * FROM ranking_temporada;**<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/tabela%20ranking_temporada.PNG" /><br><br>
**SELECT * FROM ESCOLHE_E_C_ESCOLHE_USUARIO_TIME_JOGADOR;**<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/tabela%20escolha_usuario_time_jogador.PNG" /><br><br>
**SELECT * FROM aposta_usuario_partida_time;**<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/tabela%20usuario_partida.PNG" /><br><br>
**SELECT * FROM alcancou;**<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/tabela%20alcançou.PNG" /><br>


#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3) <br>
**SELECT user_name AS Nome, pontos FROM usuario WHERE pontos>100;**<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/where%201.PNG" /><br><br>
**SELECT user_name AS Nome, pontos FROM usuario WHERE pontos >100 AND pontos <300;**<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/where%202.PNG" /><br><br>
**SELECT nome AS Nome, nacionalidade FROM jogador WHERE nacionalidade = "Brasileira";**<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/where%203.PNG" /><br>

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>
**SELECT count(user_id) AS Quantidade_De_Jogadores FROM usuario;**<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/9.3%201.PNG" /><br><br>
**SELECT nome, pontos FROM usuario WHERE pontos/2 > 100;**<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/9.3%202.PNG" /><br>

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3)  <br>
**SELECT nome FROM jogador WHERE nome LIKE "m%";**<br>
<img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/9.4%201.PNG" /><br><br>
**SELECT nome FROM jogador WHERE nome LIKE "F_lipe %";**<br>
<img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/9.4%202.PNG" /><br><br>
**SELECT nome FROM time WHERE nome LIKE "K%";**<br>
<img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/9.4%203.PNG" /><br>

#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
**UPDATE time SET nacionalidade='Brasileira'	WHERE id_time = 5;**<br>
**select * from time;**<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/update%201.1.PNG" /> <img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/update%201.2.PNG" /><br><br>
**UPDATE partida SET placar = '2x0' WHERE id_partida = 2;**<br>
**select * from partida;**<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/update%202.1.PNG" /> <img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/update%202.2.PNG" /><br><br>
**UPDATE usuario SET pontos = 0 WHERE user_id < 2;**<br>
**select * from usuario;**<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/update%203.1.PNG" /> <img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/update%203.2.PNG" /><br><br>

**delete from APOSTA_USUARIO_PARTIDA_TIME WHERE FK_USUARIO_user_id = 2;**<br>
**select * from APOSTA_USUARIO_PARTIDA_TIME;**<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/delete%201.1.PNG" /> <img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/delete%201.2.PNG" /><br><br>
**delete from ranking_temporada WHERE id_temporada < 2;**<br>
**select * from ranking_temporada;**<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/delete%202.1.PNG" /> <img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/delete%202.2.PNG" /><br><br>
**delete from alcancou WHERE FK_USUARIO_user_id = 2;**
**select * from alcancou;**<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/delete%203.1.PNG" /> <img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/delete%203.2.PNG" /><br>


#### 9.6	CONSULTAS COM JUNÇÃO (Todas Junções)<br>
**SELECT * FROM partida INNER JOIN time
ON partida.FK_TIME_id_time= time.id_time;**<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/9.6%201.PNG" /><br><br>
**SELECT * FROM aposta_usuario_partida_time INNER JOIN usuario
ON FK_USUARIO_user_id = user_id ORDER BY user_name;**<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/9.6%202.PNG" /><br><br>
**SELECT * FROM jogador INNER JOIN time ON 
pickfantasy.time.id_time = pickfantasy.jogador.FK_TIME_id_time;**<br><img src="https://raw.githubusercontent.com/trabpickf/Trabalho01/master/imagens/96-3.png /> <br>

#### 9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>
**SELECT * FROM etapa GROUP BY etapa.nome;**<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/9.7%201.PNG" /><br><br>
**SELECT * FROM etapa GROUP BY etapa.id_etapa DESC;**<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/9.7%202.PNG" /><br><br>
**SELECT * FROM aposta_usuario_partida_time GROUP BY aposta_usuario_partida_time.FK_PARTIDA_id_partida;**<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/9.7%203.PNG" /><br><br>
**select * from usuario group by nome;**<br><img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/9.7%204.PNG" /><br><br>
**select * from time group by nacionalidade;**<br>
<img src="https://raw.githubusercontent.com/trabpickf/Trabalho01/master/imagens/96-3.png" /><br><br>

### 9.8 CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
**SELECT user_name, nome, user_id FROM pickfantasy.alcancou RIGHT OUTER JOIN usuario ON alcancou.FK_USUARIO_user_id = usuario.user_id;**<br>
<img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/9.8%201.PNG" /><br><br>
**SELECT campeonatos.nome, id_campeonato FROM etapa_campeonato RIGHT OUTER JOIN campeonatos ON campeonatos.id_campeonato = etapa_campeonato.FK_CAMPEONATOS_id_campeonato;**<br>
<img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/9.8%202.PNG" /><br><br>
**SELECT etapa.nome, id_etapa FROM etapa LEFT OUTER JOIN etapa_campeonato ON etapa_campeonato.FK_ETAPA_id_etapa = etapa.id_etapa;**<br>
<img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/9.8%203.PNG" /><br><br>
**SELECT user_name,id_partida, placar, ganhador FROM aposta_usuario_partida_time LEFT OUTER JOIN partida ON
partida.id_partida = aposta_usuario_partida_time.FK_PARTIDA_id_partida
RIGHT OUTER JOIN usuario ON aposta_usuario_partida_time.FK_USUARIO_user_id = usuario.user_id;**<br>
<img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/9.8%204.PNG" /><br>

### 9.9 CONSULTAS COM SELF JOIN (todas) E VIEW (mais importantes)<br>
**select time.nome as 'Time Desafiante',time2.nome as 'Time Desafiado' from time inner join partida
on(time.id_time = partida.FK_TIME_id_time) inner join time time2 on(time2.id_time = partida.FK_TIME_id_time2);**<br>
<img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/9.9%201.PNG" /><br><br><br>
**create view ranking_usuarios as select user_name as usuario, pontos from usuario order by usuario.pontos desc;<br>
select * from ranking_usuarios;**<br>
<img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/view%20ranking_usuarios.PNG" /><br><br>
**create view jogadores_times as select jogador.apelido, time.nome from jogador inner join time on(jogador.FK_TIME_id_time = time.id_time);**<br>
**select * from jogadores_times;**<br>
<img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/view%20jogadores_times.PNG" /><br>


### 9.10 SUBCONSULTAS (Mínimo 3) <br>
**select * from jogador where nome in (SELECT nome FROM jogador WHERE nome LIKE "m%");**<br>
<img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/9.10%201.PNG" /><br><br>
**select * from time where nome in (SELECT nome FROM time WHERE nacionalidade <> 'Brasileira');**<br>
<img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/9.10%202.PNG" /><br><br>
**select * from usuario where nome in (SELECT nome FROM usuario WHERE pontos >= 300);**<br>
<img src="https://github.com/trabpickf/Trabalho01/blob/master/imagens/9.10%203.PNG" /><br>


### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>
### 11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>
**[Clique aqui!](https://github.com/trabpickf/Trabalho01/blob/master/arquivos/Slide%20BD.pdf "Slide") Para acessar o SLIDE.**<br>

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
