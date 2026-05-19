-- TABELA: catalogos.tipo_ligacao (Asset Type Water Device Service Connection)
CREATE TABLE IF NOT EXISTS catalogos.tipo_ligacao (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
