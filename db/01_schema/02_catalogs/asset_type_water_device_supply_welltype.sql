-- TABELA: catalogos.tipo_poco (Asset Type Water Device Supply Welltype)
CREATE TABLE IF NOT EXISTS catalogos.tipo_poco (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
