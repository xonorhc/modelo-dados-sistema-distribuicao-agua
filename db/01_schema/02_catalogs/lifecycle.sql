-- TABELA: catalogos.situacoes (Lifecycle)
CREATE TABLE IF NOT EXISTS catalogos.situacoes (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
