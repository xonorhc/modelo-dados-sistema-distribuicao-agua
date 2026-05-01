-- TABELA: catalogos.diametro_tubo_camisa (Pipeline Casing Diameter)
CREATE TABLE IF NOT EXISTS catalogos.diametro_tubo_camisa (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
