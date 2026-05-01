-- TABELA: catalogos.gestores (Manager)
CREATE TABLE IF NOT EXISTS catalogos.gestores (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
