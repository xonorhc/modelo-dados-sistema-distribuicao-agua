-- TABLE: catalogos.fabricantes
CREATE TABLE IF NOT EXISTS catalogos.fabricantes (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

