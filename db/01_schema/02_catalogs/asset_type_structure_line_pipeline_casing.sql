-- TABELA: catalogos.tipo_tubo_camisa (Asset Type Structure Line Pipeline Casing)
CREATE TABLE IF NOT EXISTS catalogos.tipo_tubo_camisa (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
