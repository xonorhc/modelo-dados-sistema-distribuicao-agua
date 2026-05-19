-- TABELA: sistema_agua.descarga (Flushing and Blow Off)
CREATE TABLE IF NOT EXISTS sistema_agua.descarga (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('DESCARGA-' || lpad(id_objeto::text, 5, '0')) STORED,
    fabricante smallint,
    codigo_serie varchar(64),
    CONSTRAINT fk_descarga_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_descarga (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_descarga_fabricante FOREIGN KEY (fabricante) REFERENCES catalogos.fabricantes (codigo) ON UPDATE CASCADE ON DELETE RESTRICT
)
INHERITS (
    sistema_agua.ativo_pontual
);

CREATE INDEX idx_descarga_geom ON sistema_agua.descarga USING gist (geom);

