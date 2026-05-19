-- TABELA: sistema_agua.reservatorio (Storage)
CREATE TABLE IF NOT EXISTS sistema_agua.reservatorio (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('RESERVATORIO-' || lpad(id_objeto::text, 5, '0')) STORED,
    altura numeric,
    largura numeric,
    volume_m3 numeric,
    CONSTRAINT fk_reservatorio_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_reservatorio (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT chc_reservatorio_altura_limite CHECK (altura > 0),
    CONSTRAINT chc_reservatorio_largura_limite CHECK (largura > 0),
    CONSTRAINT chc_reservatorio_volume_m3_limite CHECK (volume_m3 > 0)
)
INHERITS (
    sistema_agua.ativo_pontual
);

CREATE INDEX idx_reservatorio_geom ON sistema_agua.reservatorio USING gist (geom);

