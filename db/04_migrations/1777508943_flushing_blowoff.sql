BEGIN;

INSERT INTO sistema_agua.valvula_retencao (
    tipo_ativo,
    data_instalacao,
    data_operacao,
    proprietario,
    responsavel_manutencao,
    observacoes,
    data_criacao,
    data_atualizacao,
    geom,
    rotacao_simbolo
    )
SELECT
    1 AS tipo_ativo,
    datainstalacao AS data_instalacao,
    dataoperacao AS data_operacao,
    CASE WHEN proprietario = 'EMPREENDIMENTOS' THEN 2 ELSE 1 END AS proprietario,
    CASE WHEN gerenciado = 'Empreendimentos' THEN 2 ELSE 1 END AS responsavel_manutencao,
    coalesce(descloc, observacoes) AS observacoes,
    datacriacao AS data_criacao,
    dataatualizacao AS data_atualizacao,
    ST_Transform ((ST_Dump (geometry)).geom, 4674) AS geom,
    CASE WHEN rotacao BETWEEN 0 AND 360 THEN round(rotacao) ELSE 0 END AS rotacao_simbolo
FROM legado."aValvula"
WHERE funcaovalvula = 'Descarga' AND geometry IS NOT NULL;

ROLLBACK;
