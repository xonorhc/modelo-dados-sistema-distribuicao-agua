-- TABELA: catalogos.tipo_ramal_agua (Asset Type Water Line Service)
CREATE TABLE IF NOT EXISTS catalogos.tipo_ramal_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
