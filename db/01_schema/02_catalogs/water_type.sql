-- TABELA: catalogos.tipo_agua
CREATE TABLE IF NOT EXISTS catalogos.tipo_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
