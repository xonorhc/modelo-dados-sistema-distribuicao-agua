-- TABELA: sistema_agua.descarga (Flushing and Blow Off)
CREATE TABLE IF NOT EXISTS sistema_agua.descarga (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Descarga',
    fabricante varchar(64),
    codigo_serie varchar(64),
    CONSTRAINT fk_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_descarga (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);
