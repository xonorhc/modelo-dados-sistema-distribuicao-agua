-- TABELA: sistema_agua.valvula_retencao (Backflow)
CREATE TABLE IF NOT EXISTS sistema_agua.valvula_retencao (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('VALVULA-RETENCAO-' || lpad(id_objeto::text, 5, '0')) STORED,
    fabricante smallint,
    codigo_serie varchar(64),
    bloqueado boolean DEFAULT FALSE,
    CONSTRAINT fk_valvula_retencao_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_valvula_retencao (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_valvula_retencao_fabricante FOREIGN KEY (fabricante) REFERENCES catalogos.fabricantes (codigo) ON UPDATE CASCADE ON DELETE RESTRICT
)
INHERITS (
    sistema_agua.ativo_pontual
);

CREATE INDEX idx_valvula_retencao_geom ON sistema_agua.valvula_retencao USING gist (geom);

