-- TABELA: catalogos.tipo_encamisamento (Asset Type Structure Line Pipeline Casing)
CREATE TABLE IF NOT EXISTS catalogos.tipo_encamisamento (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
