BEGIN;

INSERT INTO sistema_agua.valvula_manobra (
    tipo_ativo,
    data_instalacao,
    data_operacao,
    proprietario,
    responsavel_manutencao,
    observacoes,
    data_criacao,
    data_atualizacao,
    geom,
    rotacao_simbolo,
    diametro,
    modelo,
    posicao,
    voltas_para_fechar
)
SELECT
    CASE WHEN funcaovalvula = 'Bloqueio' THEN 6
        WHEN funcaovalvula = 'Controle' THEN 5
        WHEN funcaovalvula = 'Manobra' THEN 3
        ELSE 0
    END AS tipo_ativo,
    datainstalacao AS data_instalacao,
    dataoperacao AS data_operacao,
    CASE WHEN proprietario = 'EMPREENDIMENTOS' THEN 2 ELSE 1 END AS proprietario,
    CASE WHEN gerenciado = 'Empreendimentos' THEN 2 ELSE 1 END AS responsavel_manutencao,
    COALESCE(descloc, observacoes) AS observacoes,
    datacriacao AS data_criacao,
    dataatualizacao AS data_atualizacao,
    ST_TRANSFORM(ST_GEOMETRYN(geometry, 1), 31981) AS geom,
    CASE WHEN rotacao BETWEEN 0 AND 360 THEN ROUND(rotacao) ELSE 0 END AS rotacao_simbolo,
    CASE WHEN diametro BETWEEN 15 AND 19 THEN 15
        WHEN diametro BETWEEN 20 AND 24 THEN 20
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
        WHEN diametro BETWEEN 1000 AND 1199 THEN 1000
        WHEN diametro BETWEEN 1200 AND 1299 THEN 1200
        ELSE 0
    END AS diametro,
    CASE WHEN tipovalvula = 'Borboleta' THEN 2
        WHEN tipovalvula = 'Esferica' THEN 1
        WHEN tipovalvula = 'Gaveta' THEN 4
        ELSE 0
    END AS modelo,
    CASE WHEN posicaoatual = 'Aberta' THEN 2
        WHEN posicaoatual = 'Fechada' THEN 1
        ELSE 0
    END AS posicao,
    qtdvoltasfechar AS voltas_para_fechar
FROM legado."aValvula"
WHERE tipovalvula != 'RedutoraPressao'
    OR funcaovalvula != 'Retencao';

COMMIT;
