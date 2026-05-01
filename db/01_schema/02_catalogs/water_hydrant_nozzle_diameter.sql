-- TABELA: catalogos.diametro_secundario_hidrante (Water Hydrant Nozzle Diameter)
CREATE TABLE IF NOT EXISTS catalogos.diametro_secundario_hidrante (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
