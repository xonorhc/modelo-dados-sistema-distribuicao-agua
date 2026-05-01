-- TABELA: catalogos.tipo_hidrante (Asset Type Water Device Fire Hydrant)
CREATE TABLE IF NOT EXISTS catalogos.tipo_hidrante (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
