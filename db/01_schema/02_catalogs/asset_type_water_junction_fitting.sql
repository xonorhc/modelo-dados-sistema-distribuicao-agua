-- TABELA: catalogos.tipo_conexao (Asset Type Water Junction Fitting)
CREATE TABLE IF NOT EXISTS catalogos.tipo_conexao (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
