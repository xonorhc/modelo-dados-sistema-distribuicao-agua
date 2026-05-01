BEGIN;

INSERT INTO sistema_agua.poco (
    tipo_ativo,
    nome,
    situacao,
    data_instalacao,
    data_operacao,
    proprietario,
    responsavel_manutencao,
    observacoes,
    data_criacao,
    data_atualizacao,
    geom
)
SELECT
    1 AS tipo_ativo,
    idinstalacao AS nome,
    CASE WHEN ativado = true THEN 4 ELSE 7 END AS situacao,
    datainstalacao AS data_instalacao,
    dataoperacao AS data_operacao,
    CASE WHEN proprietario = 'EMPREENDIMENTOS' THEN 2 ELSE 1 END AS proprietario,
    CASE WHEN gerenciado = 'Empreendimentos' THEN 2 ELSE 1 END AS responsavel_manutencao,
    COALESCE(endereco, observacoes) AS observacoes,
    datacriacao AS data_criacao,
    dataatualizacao AS data_atualizacao,
    ST_TRANSFORM(ST_GEOMETRYN(geometry, 1), 31981) AS geom
FROM legado."aPoco"
WHERE geometry IS NOT null;

COMMIT;
