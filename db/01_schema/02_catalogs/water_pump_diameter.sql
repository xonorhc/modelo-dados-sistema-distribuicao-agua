-- TABELA: catalogos.diametro_bomba (Water Pump Diameter)
CREATE TABLE IF NOT EXISTS catalogos.diametro_bomba (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
