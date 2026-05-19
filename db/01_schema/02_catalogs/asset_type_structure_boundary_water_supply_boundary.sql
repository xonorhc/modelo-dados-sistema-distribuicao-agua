-- TABELA: catalogos.tipo_unidade_producao (Asset Type Structure Boundary Water Supply Boundary)
CREATE TABLE IF NOT EXISTS catalogos.tipo_unidade_producao (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
