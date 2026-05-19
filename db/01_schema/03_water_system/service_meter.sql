-- TABELA: sistema_agua.hidrometro_predial (Service Meter)
CREATE TABLE IF NOT EXISTS sistema_agua.hidrometro_predial (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('HIDROMETRO-' || lpad(id_objeto::text, 5, '0')) STORED,
    matricula varchar(64),
    diametro smallint,
    fabricante smallint,
    codigo_serie varchar(64),
    CONSTRAINT fk_hidrometro_predial_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_ligacao (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_hidrometro_predial_diametro FOREIGN KEY (diametro) REFERENCES catalogos.diametro_hidrometro (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_hidrometro_predial_fabricante FOREIGN KEY (fabricante) REFERENCES catalogos.fabricantes (codigo) ON UPDATE CASCADE ON DELETE RESTRICT
)
INHERITS (
    sistema_agua.ativo_pontual
);

CREATE INDEX idx_hidrometro_predial_geom ON sistema_agua.hidrometro_predial USING gist (geom);

