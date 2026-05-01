-- TABELA: catalogos.tipo_limite_abastecimento (Asset Type Structure Boundary Water Supply Boundary)
CREATE TABLE IF NOT EXISTS catalogos.tipo_limite_abastecimento (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
