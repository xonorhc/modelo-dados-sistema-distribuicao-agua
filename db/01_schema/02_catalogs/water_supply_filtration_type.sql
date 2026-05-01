-- TABELA: catalogos.tipo_filtragem_agua (Water Supply Filtration Type)
CREATE TABLE IF NOT EXISTS catalogos.tipo_filtragem_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
