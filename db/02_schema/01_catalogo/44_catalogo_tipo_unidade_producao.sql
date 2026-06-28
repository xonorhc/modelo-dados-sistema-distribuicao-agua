BEGIN;

CREATE TABLE IF NOT EXISTS catalogo.tipo_unidade_producao (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

COMMIT;
