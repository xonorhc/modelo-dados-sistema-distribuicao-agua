-- TABELA: sistema_agua.ponto_coleta (Sample Station)
CREATE TABLE IF NOT EXISTS sistema_agua.ponto_coleta (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('PONTO-COLETA-' || lpad(id_objeto::text, 5, '0')) STORED,
    localizacao_estacao varchar(255),
    CONSTRAINT fk_ponto_coleta_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_amostra (codigo) ON UPDATE CASCADE ON DELETE RESTRICT
)
INHERITS (
    sistema_agua.ativo_pontual
);

CREATE INDEX idx_ponto_coleta_geom ON sistema_agua.ponto_coleta USING gist (geom);

