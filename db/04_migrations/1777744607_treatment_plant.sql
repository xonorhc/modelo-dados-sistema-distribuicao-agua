BEGIN;

INSERT INTO sistema_agua.eta (
    nome,
    data_instalacao,
    data_operacao,
    proprietario,
    responsavel_manutencao,
    observacoes,
    data_criacao,
    data_atualizacao,
    geom,
    capacidade_outorgada,
    capacidade_nominal
)
SELECT
    nome,
    datainstalacao AS data_instalacao,
    dataoperacao AS data_operacao,
    CASE WHEN proprietario = 'EMPREENDIMENTOS' THEN 2 ELSE 1 END AS proprietario,
    CASE WHEN gerenciado = 'Empreendimentos' THEN 2 ELSE 1 END AS responsavel_manutencao,
    COALESCE(endereco, observacoes) AS observacoes,
    datacriacao AS data_criacao,
    dataatualizacao AS data_atualizacao,
    ST_TRANSFORM(ST_GEOMETRYN(geometry, 1), 31981) AS geom,
    vazaoprojetada AS capacidade_outorgada,
    vazaonominal AS capacidade_nominal
FROM legado."aEstacaoTratamento"
WHERE geometry IS NOT null;

COMMIT;
