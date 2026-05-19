-- TABELA: sistema_agua.valvula_fluxo (Flow Valve)
CREATE TABLE IF NOT EXISTS sistema_agua.valvula_fluxo (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('VALVULA-FLUXO-' || lpad(id_objeto::text, 5, '0')) STORED,
    diametro smallint,
    fabricante smallint,
    codigo_serie varchar(64),
    CONSTRAINT fk_valvula_fluxo_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_valvula_fluxo (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_valvula_fluxo_diametro FOREIGN KEY (diametro) REFERENCES catalogos.diametro_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_valvula_fluxo_fabricante FOREIGN KEY (fabricante) REFERENCES catalogos.fabricantes (codigo) ON UPDATE CASCADE ON DELETE RESTRICT
)
INHERITS (
    sistema_agua.ativo_pontual
);

CREATE INDEX idx_valvula_fluxo_geom ON sistema_agua.valvula_fluxo USING gist (geom);

