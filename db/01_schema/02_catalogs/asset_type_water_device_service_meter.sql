-- TABLE: tipo_hidrometro
CREATE TABLE IF NOT EXISTS catalogos.tipo_hidrometro (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

