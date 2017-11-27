USE pickfantasy;

# 9.1 -  
SELECT * FROM usuario;
SELECT * FROM partida;
SELECT * FROM campeonatos;
SELECT * FROM time;
SELECT * FROM etapa;
SELECT * FROM jogador;
SELECT * FROM ranking_temporada;
SELECT * FROM ESCOLHE_E_C_ESCOLHE_USUARIO_TIME_JOGADOR;
SELECT * FROM aposta_usuario_partida_time;
SELECT * FROM alcancou;





# 9.2

SELECT user_name AS Nome, pontos FROM usuario WHERE pontos>100;
SELECT user_name AS Nome, pontos FROM usuario WHERE pontos >100 AND pontos <300;
SELECT nome AS Nome, nacionalidade FROM jogador WHERE nacionalidade = "Brasileira";

# 9.3

SELECT count(user_id) AS Quantidade_De_Jogadores FROM usuario;
SELECT nome, pontos FROM usuario WHERE pontos/2 > 100;

# 9.4
SELECT nome FROM jogador WHERE nome LIKE "m%";
SELECT nome FROM jogador WHERE nome LIKE "F_lipe %";
SELECT nome FROM time WHERE nome LIKE "K%"

# 9.5

UPDATE time SET nacionalidade="Brasileira"	WHERE id_time = 7;
UPDATE time SET Campeonato = "LOL" WHERE id_time = 4;
UPDATE usuario SET pontos = 0 WHERE user_id < 2;

delete from APOSTA_USUARIO_PARTIDA_TIME WHERE FK_USUARIO_user_id = 2;
delete from ranking_temporada WHERE id_temporada < 2;
delete from time WHERE nacionalidade <> 'Brasileira';


# 9.6

SELECT * FROM partida INNER JOIN time
ON partida.FK_TIME_id_time= time.id_time;

SELECT * FROM aposta_usuario_partida_time INNER JOIN usuario
ON FK_USUARIO_user_id = user_id ORDER BY user_name;

SELECT * FROM jogador INNER JOIN time ON 
pickfantasy.time.id_time = pickfantasy.jogador.FK_TIME_id_time;

# 9.7

SELECT * FROM etapa GROUP BY etapa.nome;
SELECT * FROM etapa GROUP BY etapa.id_etapa DESC;
SELECT * FROM aposta_usuario_partida_time GROUP BY aposta_usuario_partida_time.FK_PARTIDA_id_partida;
select * from usuario group by nome;
select * from time group by nacionalidade;

# 9.8

SELECT user_name, nome, user_id FROM pickfantasy.alcancou RIGHT OUTER JOIN usuario ON alcancou.FK_USUARIO_user_id = usuario.user_id;
SELECT campeonatos.nome, id_campeonato FROM etapa_campeonato RIGHT OUTER JOIN campeonatos ON campeonatos.id_campeonato = etapa_campeonato.FK_CAMPEONATOS_id_campeonato;
SELECT etapa.nome, id_etapa FROM etapa LEFT OUTER JOIN etapa_campeonato ON etapa_campeonato.FK_ETAPA_id_etapa = etapa.id_etapa;
SELECT user_name,id_partida, placar, ganhador FROM aposta_usuario_partida_time LEFT OUTER JOIN partida ON
partida.id_partida = aposta_usuario_partida_time.FK_PARTIDA_id_partida
RIGHT OUTER JOIN usuario ON aposta_usuario_partida_time.FK_USUARIO_user_id = usuario.user_id;

#9.9

create view ranking_usuarios as select user_name as usuario, pontos from usuario order by usuario.pontos desc;
select * from ranking_usuarios;
create view jogadores_times as select jogador.apelido, time.nome from jogador inner join time on(jogador.FK_TIME_id_time = time.id_time);
select * from jogadores_times;

#9.10

select * from jogador where nome in (SELECT nome FROM jogador WHERE nome LIKE "m%");
select * from time where nome in (SELECT nome FROM time WHERE nacionalidade <> 'Brasileira');
select * from usuario where nome in (SELECT nome FROM usuario WHERE pontos >= 300);
