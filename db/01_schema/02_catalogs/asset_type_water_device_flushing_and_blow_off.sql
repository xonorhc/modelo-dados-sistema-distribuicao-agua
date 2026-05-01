-- TABELA: catalogos.tipo_descarga (Asset Type Water Device Flushing and Blow Off)
CREATE TABLE IF NOT EXISTS catalogos.tipo_descarga (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
