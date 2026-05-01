-- TABELA: catalogos.tipo_valvula_agua (Water Valve Type)
CREATE TABLE IF NOT EXISTS catalogos.tipo_valvula_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
