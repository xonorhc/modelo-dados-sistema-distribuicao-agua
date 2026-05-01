-- TABELA: catalogos.diametro_agua (Water Diameter)
CREATE TABLE IF NOT EXISTS catalogos.diametro_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
