BEGIN;

CREATE TABLE IF NOT EXISTS sistema_agua.valvula_ligacao (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('VLA-' || lpad(id_objeto::text, 5, '0')) STORED,
    diametro smallint,
    fabricante smallint,
    codigo_serie varchar(64),
    modelo smallint,
    posicao smallint,
    sentido_fechamento_horario smallint,
    voltas_para_fechar numeric,
    operacional boolean DEFAULT TRUE,
    indicador_coluna boolean DEFAULT FALSE,
    FOREIGN KEY (tipo_ativo) REFERENCES catalogo.tipo_valvula_ramal (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (diametro) REFERENCES catalogo.diametro_global (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (fabricante) REFERENCES catalogo.fabricante (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (modelo) REFERENCES catalogo.tipo_valvula_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (posicao) REFERENCES catalogo.posicao_valvula (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (sentido_fechamento_horario) REFERENCES catalogo.direcao_fechamento_valvula (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CHECK (voltas_para_fechar > 0)
)
INHERITS (
    sistema_agua.ativo_pontual
);

CREATE INDEX ON sistema_agua.valvula_ligacao USING gist (geom);

COMMIT;
