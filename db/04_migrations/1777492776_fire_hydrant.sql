BEGIN;

INSERT INTO sistema_agua.hidrante (tipo_ativo, nome, data_instalacao, data_operacao, proprietario, responsavel_manutencao, observacoes, data_criacao, data_atualizacao, geom)
SELECT
    CASE WHEN tipohidrante = 'Coluna' THEN 1
         WHEN tipohidrante = 'Parede' THEN 2
    ELSE 0 END AS tipo_ativo,
    idinstalacao AS nome,
    datainstalacao AS data_instalacao,
    dataoperacao AS data_operacao,
    CASE WHEN proprietario = 'Empreendimentos' THEN 2 ELSE 1 END AS proprietario,
    CASE WHEN gerenciado = 'Empreendimentos' THEN 2 ELSE 1 END AS responsavel_manutencao,
    coalesce(endereco, observacoes) AS observacoes,
    datacriacao AS data_criacao,
    dataatualizacao AS data_atualizacao,
    ST_Transform (ST_GeometryN (geometry, 1), 31981) AS geom
FROM legado."aHidrante"
WHERE geometry IS NOT NULL;

COMMIT;
