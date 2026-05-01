-- TABELA: catalogos.tipo_bomba (Asset Type Water Device Pump)
CREATE TABLE IF NOT EXISTS catalogos.tipo_bomba (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
