-- TABELA: catalogos.diametro_ramal_agua (Water Service Diameter)
CREATE TABLE IF NOT EXISTS catalogos.diametro_ramal_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
