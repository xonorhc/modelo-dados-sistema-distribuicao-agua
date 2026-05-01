-- TABELA: catalogos.tipo_modelo_bomba (Water Pump Type)
CREATE TABLE IF NOT EXISTS catalogos.tipo_modelo_bomba (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
