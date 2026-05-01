-- TABELA: catalogos.diametro_hidrante (Water Hydrant Service Diameter)
CREATE TABLE IF NOT EXISTS catalogos.diametro_hidrante (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
