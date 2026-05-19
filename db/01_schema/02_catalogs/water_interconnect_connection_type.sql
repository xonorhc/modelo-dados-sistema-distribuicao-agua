-- TABELA: catalogos.tipo_interligacao (Water Interconnect Connection Type)
CREATE TABLE IF NOT EXISTS catalogos.tipo_interligacao (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
