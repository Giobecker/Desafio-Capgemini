/* exclui todas as tabelas
drop table tb_estatisticas; 
drop table tb_anuncio;
DROP TABle tb_cliente;
*/
create table tb_cliente(
id_cliente integer primary key auto_increment,
nome varchar(255)
);
create table tb_estatisticas(
id_estatisticas int primary key auto_increment,
id_cliente integer,
valor_total_investido double,
qtd_max_visualizacao integer,
qtd_max_cliques integer,
qtd_max_compartilhamento integer,
FOREIGN KEY (id_cliente) REFERENCES tb_cliente(id_cliente)
);

Create Table tb_anuncio (
Id integer auto_increment primary key,
Nome varchar (255),
id_cliente integer,
Dt_inicio datetime, 
Dt_termino datetime,
FOREIGN KEY (id_cliente) REFERENCES tb_cliente(id_cliente)
);


INSERT INTO tb_cliente values (0, 'cliente1');
INSERT INTO tb_cliente values (0, 'cliente2');
INSERT INTO tb_cliente values (0, 'cliente3');
SELECT * FROM tb_cliente;

INSERT INTO tb_anuncio VALUES (0, 'anuncio1cliente1', 1, now(), now());
INSERT INTO tb_anuncio VALUES (0, 'anuncio2cliente1', 1, now(), now());
INSERT INTO tb_anuncio VALUES (0, 'anuncio1cliente3', 3, now(), now());
SELECT * FROM tb_anuncio;

INSERT INTO tb_estatisticas VALUES (0, 1, 1011.10, 12, 12, 12);
INSERT INTO tb_estatisticas VALUES (0, 1, 600.00, 12, 12, 12);
INSERT INTO tb_estatisticas VALUES (0, 2, 800.00, 12, 12, 12);

  
SELECT c.nome as 'Cliente', a.nome as 'Anuncio', a.dt_inicio, a.dt_termino, e.valor_total_investido, e.qtd_max_visualizacao, e.qtd_max_cliques, e.qtd_max_compartilhamento FROM tb_estatisticas  e
left join tb_anuncio a
 ON a.id_cliente = e.id_cliente
 left JOIN tb_cliente c
 ON e.id_cliente = c.id_cliente

/*lista todos os anuncios com os seus respectivos clientes*/
SELECT a.nome as 'anuncio', c.nome as 'cliente' from tb_anuncio a
left join tb_cliente c
on a.id_cliente = c.id_cliente;

/*Lista todos os clientes*/
SELECT * FROM tb_cliente;

/*Lista todos os valores com respectivos clientes*/
SELECT c.nome as 'cliente', a.valor_total_investido, a.qtd_max_visualizacao, a.qtd_max_cliques, a.qtd_max_compartilhamento from tb_estatisticas a
left join tb_cliente c
on a.id_cliente = c.id_cliente;
