BEGIN;

-- Bomba Principal
INSERT INTO sistema_agua.bomba (tipo_ativo, data_instalacao, data_operacao, proprietario, responsavel_manutencao, observacoes, data_criacao, data_atualizacao, geom, rotacao_simbolo, diametro_succao, diametro_recalque, pressao_operacao, modelo)
SELECT
    3 AS tipo_ativo,
    datainstalacao AS data_instalacao,
    dataoperacao AS data_operacao,
    CASE WHEN proprietario = 'EMPREENDIMENTOS' THEN 2 ELSE 1 END AS proprietario,
    CASE WHEN gerenciado = 'Empreendimentos' THEN 2 ELSE 1 END AS responsavel_manutencao,
    coalesce(endereco, observacoes) AS observacoes,
    datacriacao AS data_criacao,
    dataatualizacao AS data_atualizacao,
    ST_Transform (ST_GeometryN (geometry, 1), 31981) AS geom,
    CASE WHEN rotacao BETWEEN 0 AND 360 THEN round(rotacao) ELSE 0 END AS rotacao_simbolo,
    CASE WHEN diametroentrada < 100 THEN 100
         WHEN diametroentrada BETWEEN 100 AND 149 THEN 100
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
    ELSE 0 END AS diametro_succao,
    CASE WHEN diametrosaida < 100 THEN 100
         WHEN diametrosaida BETWEEN 100 AND 149 THEN 100
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
    ELSE 0 END AS diametro_recalque,
    pressaonominal AS pressao_operacao,
    0 AS modelo
FROM legado."aBomba"
WHERE geometry IS NOT NULL;

-- Bomba Booster
INSERT INTO sistema_agua.bomba (tipo_ativo, nome, data_instalacao, data_operacao, proprietario, responsavel_manutencao, observacoes, data_criacao, data_atualizacao, geom, diametro_succao, diametro_recalque, pressao_operacao, modelo)
SELECT
    1 AS tipo_ativo,
    nome,
    datainstalacao AS data_instalacao,
    dataoperacao AS data_operacao,
    CASE WHEN proprietario = 'EMPREENDIMENTOS' THEN 2 ELSE 1 END AS proprietario,
    CASE WHEN gerenciado = 'Empreendimentos' THEN 2 ELSE 1 END AS responsavel_manutencao,
    coalesce(endereco, observacoes) AS observacoes,
    datacriacao AS data_criacao,
    dataatualizacao AS data_atualizacao,
    ST_Transform (ST_GeometryN (geometry, 1), 31981) AS geom,
    CASE WHEN diametroentrada < 100 THEN 100
         WHEN diametroentrada BETWEEN 100 AND 149 THEN 100
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
    ELSE 0 END AS diametro_succao,
    CASE WHEN diametrosaida < 100 THEN 100
         WHEN diametrosaida BETWEEN 100 AND 149 THEN 100
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
    ELSE 0 END AS diametro_recalque,
    pressaonominal AS pressao_operacao,
    0 AS modelo
FROM legado."aBooster"
WHERE geometry IS NOT NULL;

COMMIT;
