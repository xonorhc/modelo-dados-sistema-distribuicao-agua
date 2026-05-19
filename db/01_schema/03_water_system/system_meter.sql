-- TABELA: sistema_agua.macromedidor (System Meter)
CREATE TABLE IF NOT EXISTS sistema_agua.macromedidor (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('MACROMEDIDOR-' || lpad(id_objeto::text, 5, '0')) STORED,
    diametro smallint,
    fabricante smallint,
    codigo_serie varchar(64),
    CONSTRAINT fk_macromedidor_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_macromedidor (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_macromedidor_diametro FOREIGN KEY (diametro) REFERENCES catalogos.diametro_hidrometro (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_macromedidor_fabricante FOREIGN KEY (fabricante) REFERENCES catalogos.fabricantes (codigo) ON UPDATE CASCADE ON DELETE RESTRICT
)
INHERITS (
    sistema_agua.ativo_pontual
);

CREATE INDEX idx_macromedidor_geom ON sistema_agua.macromedidor USING gist (geom);

