-- TABELA: catalogos.fonte_espacial (Spatial Source)
CREATE TABLE IF NOT EXISTS catalogos.fonte_espacial (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
