-- TABELA: catalogos.diametro_rede_agua (Water Main Diameter)
CREATE TABLE IF NOT EXISTS catalogos.diametro_rede_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
