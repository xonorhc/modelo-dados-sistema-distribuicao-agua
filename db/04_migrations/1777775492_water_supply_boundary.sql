BEGIN;

INSERT INTO sistema_agua.limite_abastecimento (
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
    2 AS tipo_ativo,
    nome,
    CASE WHEN ativado = true THEN 4 ELSE 0 END AS situacao,
    datainstalacao AS data_instalacao,
    dataoperacao AS data_operacao,
    CASE WHEN proprietario = 'EMPREENDIMENTOS' THEN 2 ELSE 1 END AS proprietario,
    CASE WHEN gerenciado = 'Empreendimentos' THEN 2 ELSE 1 END AS responsavel_manutencao,
    COALESCE(endereco, observacoes) AS observacoes,
    datacriacao AS data_criacao,
    dataatualizacao AS data_atualizacao,
    ST_TRANSFORM(geometry, 31981) AS geom
FROM legado."aEstruturas"
WHERE geometry IS NOT null AND tipoestrutura = 'EstacaoTratamento';

COMMIT;
