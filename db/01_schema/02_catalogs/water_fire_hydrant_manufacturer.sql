-- TABELA: catalogos.fabricantes_hidrante (Water Fire Hydrant Manufacturer)
CREATE TABLE IF NOT EXISTS catalogos.fabricantes_hidrante (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
