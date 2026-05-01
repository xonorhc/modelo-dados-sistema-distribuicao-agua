-- TABELA: catalogos.tipo_material_ramal_agua (Water Service Material)
CREATE TABLE IF NOT EXISTS catalogos.tipo_material_ramal_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
