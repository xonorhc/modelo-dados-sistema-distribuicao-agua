-- TABELA: catalogos.confiabilidade_espacial (Spatial Confidence)
CREATE TABLE IF NOT EXISTS catalogos.confiabilidade_espacial (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
