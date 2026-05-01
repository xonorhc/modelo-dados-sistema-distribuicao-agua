-- TABELA: catalogos.diametro_hidrometro (Water Meter Diameter)
CREATE TABLE IF NOT EXISTS catalogos.diametro_hidrometro (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
