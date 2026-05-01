-- TABELA: catalogos.tipo_rede_agua (Asset Type Water Line Water Main)
CREATE TABLE IF NOT EXISTS catalogos.tipo_rede_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
