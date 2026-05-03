BEGIN;

INSERT INTO sistema_agua.conexao (tipo_ativo, data_instalacao, data_operacao, proprietario, responsavel_manutencao, observacoes, data_criacao, data_atualizacao, geom, rotacao_simbolo, diametro, diametro_secundario)
SELECT
    CASE WHEN tipoconexao = 'Adaptador' THEN 20
         WHEN tipoconexao = 'CAP' THEN 6
         WHEN tipoconexao = 'Cruzeta' THEN 4
         WHEN tipoconexao = 'CruzetaReducao' THEN 11
         WHEN tipoconexao = 'Curva' THEN 5
         WHEN tipoconexao = 'Juncao' THEN 22
         WHEN tipoconexao = 'Luva' THEN 3
         WHEN tipoconexao = 'No' THEN 2
         WHEN tipoconexao = 'Reducao' THEN 10
         WHEN tipoconexao = 'ReducaoTE' THEN 12
         WHEN tipoconexao = 'TE' THEN 19
    ELSE 0 END AS tipo_ativo,
    datainstalacao AS data_instalacao,
    dataoperacao AS data_operacao,
    CASE WHEN proprietario = 'EMPREENDIMENTOS' THEN 2 ELSE 1 END AS proprietario,
    CASE WHEN gerenciado = 'Empreendimentos' THEN 2 ELSE 1 END AS responsavel_manutencao,
    coalesce(descloc, observacoes) AS observacoes,
    datacriacao AS data_criacao,
    dataatualizacao AS data_atualizacao,
    ST_Transform (ST_GeometryN (geometry, 1), 31981) AS geom,
    CASE WHEN rotacao BETWEEN 0 AND 360 THEN round(rotacao) ELSE 0 END AS rotacao_simbolo,
    CASE WHEN diametroentrada < 20 THEN 15
         WHEN diametroentrada BETWEEN 20 AND 24 THEN 20
         WHEN diametroentrada BETWEEN 25 AND 31 THEN 25
         WHEN diametroentrada BETWEEN 32 AND 39 THEN 32
         WHEN diametroentrada BETWEEN 40 AND 49 THEN 40
         WHEN diametroentrada BETWEEN 50 AND 59 THEN 50
         WHEN diametroentrada BETWEEN 60 AND 74 THEN 60
         WHEN diametroentrada BETWEEN 75 AND 84 THEN 75
         WHEN diametroentrada BETWEEN 85 AND 99 THEN 85
         WHEN diametroentrada BETWEEN 100 AND 124 THEN 100
         WHEN diametroentrada BETWEEN 125 AND 149 THEN 125
         WHEN diametroentrada BETWEEN 150 AND 199 THEN 150
         WHEN diametroentrada BETWEEN 200 AND 249 THEN 200
         WHEN diametroentrada BETWEEN 250 AND 299 THEN 250
         WHEN diametroentrada BETWEEN 300 AND 349 THEN 300
         WHEN diametroentrada BETWEEN 350 AND 399 THEN 350
         WHEN diametroentrada BETWEEN 400 AND 449 THEN 400
         WHEN diametroentrada BETWEEN 450 AND 499 THEN 450
         WHEN diametroentrada BETWEEN 500 AND 599 THEN 500
         WHEN diametroentrada BETWEEN 600 AND 699 THEN 600
         WHEN diametroentrada BETWEEN 700 AND 799 THEN 700
         WHEN diametroentrada BETWEEN 800 AND 899 THEN 800
         WHEN diametroentrada BETWEEN 900 AND 999 THEN 900
         WHEN diametroentrada BETWEEN 1000 AND 1199 THEN 1000
         WHEN diametroentrada BETWEEN 1200 AND 1299 THEN 1200
    ELSE 0 END AS diametro,
    CASE WHEN diametrosaida < 20 THEN 15
         WHEN diametrosaida BETWEEN 20 AND 24 THEN 20
         WHEN diametrosaida BETWEEN 25 AND 31 THEN 25
         WHEN diametrosaida BETWEEN 32 AND 39 THEN 32
         WHEN diametrosaida BETWEEN 40 AND 49 THEN 40
         WHEN diametrosaida BETWEEN 50 AND 59 THEN 50
         WHEN diametrosaida BETWEEN 60 AND 74 THEN 60
         WHEN diametrosaida BETWEEN 75 AND 84 THEN 75
         WHEN diametrosaida BETWEEN 85 AND 99 THEN 85
         WHEN diametrosaida BETWEEN 100 AND 124 THEN 100
         WHEN diametrosaida BETWEEN 125 AND 149 THEN 125
         WHEN diametrosaida BETWEEN 150 AND 199 THEN 150
         WHEN diametrosaida BETWEEN 200 AND 249 THEN 200
         WHEN diametrosaida BETWEEN 250 AND 299 THEN 250
         WHEN diametrosaida BETWEEN 300 AND 349 THEN 300
         WHEN diametrosaida BETWEEN 350 AND 399 THEN 350
         WHEN diametrosaida BETWEEN 400 AND 449 THEN 400
         WHEN diametrosaida BETWEEN 450 AND 499 THEN 450
         WHEN diametrosaida BETWEEN 500 AND 599 THEN 500
         WHEN diametrosaida BETWEEN 600 AND 699 THEN 600
         WHEN diametrosaida BETWEEN 700 AND 799 THEN 700
         WHEN diametrosaida BETWEEN 800 AND 899 THEN 800
         WHEN diametrosaida BETWEEN 900 AND 999 THEN 900
         WHEN diametrosaida BETWEEN 1000 AND 1199 THEN 1000
         WHEN diametrosaida BETWEEN 1200 AND 1299 THEN 1200
    ELSE 0 END AS diametro_secundario
FROM legado."aConexao"
WHERE tipoconexao != 'Ventosa';

COMMIT;
