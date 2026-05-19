-- TABELA: catalogos.tipo_unidade_elevatoria_agua (Asset Type Structure Boundary Water Pump Station Boundary)
CREATE TABLE IF NOT EXISTS catalogos.tipo_unidade_elevatoria_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
