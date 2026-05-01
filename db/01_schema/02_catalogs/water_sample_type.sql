-- TABELA: catalogos.tipo_amostra (Water Sample Type)
CREATE TABLE IF NOT EXISTS catalogos.tipo_amostra (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
