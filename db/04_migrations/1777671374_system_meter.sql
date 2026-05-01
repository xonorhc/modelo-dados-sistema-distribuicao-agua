BEGIN;

INSERT INTO sistema_agua.macromedidor (tipo_ativo, nome, data_instalacao, data_operacao, proprietario, responsavel_manutencao, observacoes, data_criacao, data_atualizacao, geom, rotacao_simbolo, diametro, fabricante, codigo_serie)
SELECT
    1 AS tipo_ativo,
    idinstalacao AS nome,
    datainstalacao AS data_instalacao,
    dataoperacao AS data_operacao,
    CASE WHEN proprietario = 'EMPREENDIMENTOS' THEN 2 ELSE 1 END AS proprietario,
    CASE WHEN gerenciado = 'Empreendimentos' THEN 2 ELSE 1 END AS responsavel_manutencao,
    coalesce(descloc, observacoes) AS observacoes,
    datacriacao AS data_criacao,
    dataatualizacao AS data_atualizacao,
    ST_Transform (ST_GeometryN (geometry, 1), 31981) AS geom,
    CASE WHEN rotacao BETWEEN 0 AND 360 THEN round(rotacao) ELSE 0 END AS rotacao_simbolo,
    CASE WHEN diametro BETWEEN 20 AND 24 THEN 20
         WHEN diametro BETWEEN 25 AND 31 THEN 25
         WHEN diametro BETWEEN 32 AND 39 THEN 32
         WHEN diametro BETWEEN 40 AND 49 THEN 40
         WHEN diametro BETWEEN 50 AND 59 THEN 50
         WHEN diametro BETWEEN 60 AND 74 THEN 60
         WHEN diametro BETWEEN 75 AND 84 THEN 75
         WHEN diametro BETWEEN 85 AND 99 THEN 85
         WHEN diametro BETWEEN 100 AND 124 THEN 100
         WHEN diametro BETWEEN 125 AND 149 THEN 125
         WHEN diametro BETWEEN 150 AND 199 THEN 150
         WHEN diametro BETWEEN 200 AND 249 THEN 200
         WHEN diametro BETWEEN 250 AND 299 THEN 250
         WHEN diametro BETWEEN 300 AND 349 THEN 300
         WHEN diametro BETWEEN 350 AND 399 THEN 350
         WHEN diametro BETWEEN 400 AND 449 THEN 400
         WHEN diametro BETWEEN 450 AND 499 THEN 450
         WHEN diametro BETWEEN 500 AND 599 THEN 500
         WHEN diametro BETWEEN 600 AND 699 THEN 600
         WHEN diametro BETWEEN 700 AND 799 THEN 700
         WHEN diametro BETWEEN 800 AND 899 THEN 800
         WHEN diametro BETWEEN 900 AND 999 THEN 900
    ELSE 0 END AS diametro,
    fabricante,
    tag as codigo_serie
FROM legado."aMacromedidor"
WHERE geometry IS NOT NULL;

COMMIT;
