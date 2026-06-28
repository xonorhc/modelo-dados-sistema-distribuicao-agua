BEGIN;

CREATE TABLE IF NOT EXISTS sistema_agua.reservatorio (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('RES-' || lpad(id_objeto::text, 5, '0')) STORED,
    altura numeric,
    largura numeric,
    volume_m3 numeric,
    FOREIGN KEY (tipo_ativo) REFERENCES catalogo.tipo_reservatorio (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CHECK (altura > 0),
    CHECK (largura > 0),
    CHECK (volume_m3 > 0)
)
INHERITS (
    sistema_agua.ativo_pontual
);

CREATE INDEX ON sistema_agua.reservatorio USING gist (geom);

COMMIT;
