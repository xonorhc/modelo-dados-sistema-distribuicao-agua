BEGIN;

CREATE TABLE IF NOT EXISTS sistema_agua.valvula_manobra (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('VMA-' || lpad(id_objeto::text, 5, '0')) STORED,
    diametro smallint,
    fabricante smallint,
    codigo_serie varchar(64),
    modelo smallint,
    posicao smallint,
    sentido_fechamento_horario smallint,
    voltas_para_fechar numeric,
    operacional boolean DEFAULT TRUE,
    possui_bypass boolean DEFAULT FALSE,
    FOREIGN KEY (tipo_ativo) REFERENCES catalogo.tipo_valvula_sistema (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (diametro) REFERENCES catalogo.diametro_global (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (fabricante) REFERENCES catalogo.fabricante (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (modelo) REFERENCES catalogo.tipo_valvula_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (posicao) REFERENCES catalogo.posicao_valvula (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (sentido_fechamento_horario) REFERENCES catalogo.direcao_fechamento_valvula (codigo) ON UPDATE CASCADE ON DELETE RESTRICT
)
INHERITS (
    sistema_agua.ativo_pontual
);

CREATE INDEX ON sistema_agua.valvula_manobra USING gist (geom);

COMMIT;
