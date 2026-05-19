-- TABELA: sistema_agua.valvula_pressao (Pressure Valve / VRP)
CREATE TABLE IF NOT EXISTS sistema_agua.valvula_pressao (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('VALVULA-PRESSAO-' || lpad(id_objeto::text, 5, '0')) STORED,
    diametro smallint,
    pressao_nominal numeric,
    fabricante smallint,
    codigo_serie varchar(64),
    CONSTRAINT fk_valvula_pressao_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_valvula_pressao (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_valvula_pressao_diametro FOREIGN KEY (diametro) REFERENCES catalogos.diametro_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_valvula_pressao_fabricante FOREIGN KEY (fabricante) REFERENCES catalogos.fabricantes (codigo) ON UPDATE CASCADE ON DELETE RESTRICT
)
INHERITS (
    sistema_agua.ativo_pontual
);

CREATE INDEX idx_valvula_pressao_geom ON sistema_agua.valvula_pressao USING gist (geom);

