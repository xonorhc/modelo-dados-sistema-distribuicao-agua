-- TABELA: catalogos.tipo_enchimento_tubo_camisa (Pipeline Casing Fill Type)
CREATE TABLE IF NOT EXISTS catalogos.tipo_enchimento_tubo_camisa (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
