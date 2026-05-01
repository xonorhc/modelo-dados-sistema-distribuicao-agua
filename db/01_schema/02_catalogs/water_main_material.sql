-- TABELA: catalogos.tipo_material_rede_agua (Water Main Material)
CREATE TABLE IF NOT EXISTS catalogos.tipo_material_rede_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
