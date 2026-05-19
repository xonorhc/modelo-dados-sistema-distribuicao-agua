-- TABELA: sistema_agua.interligacao (Interconnect)
CREATE TABLE IF NOT EXISTS sistema_agua.interligacao (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('INTERLIGACAO-' || lpad(id_objeto::text, 5, '0')) STORED,
    vazao_outorgada numeric,
    vazao_disponivel numeric,
    emergencia boolean DEFAULT FALSE,
    CONSTRAINT fk_interligacao_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_interligacao (codigo) ON UPDATE CASCADE ON DELETE RESTRICT
)
INHERITS (
    sistema_agua.ativo_pontual
);

CREATE INDEX idx_interligacao_geom ON sistema_agua.interligacao USING gist (geom);

