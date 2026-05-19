-- TABELA: sistema_agua.valvula_manobra (System Valve)
CREATE TABLE IF NOT EXISTS sistema_agua.valvula_manobra (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('VALVULA-MANOBRA-' || lpad(id_objeto::text, 5, '0')) STORED,
    diametro smallint,
    fabricante smallint,
    codigo_serie varchar(64),
    modelo smallint,
    posicao smallint,
    sentido_fechamento_horario smallint,
    voltas_para_fechar numeric,
    operacional boolean DEFAULT TRUE,
    possui_bypass boolean DEFAULT FALSE,
    CONSTRAINT fk_valvula_manobra_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_valvula_sistema (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_valvula_manobra_diametro FOREIGN KEY (diametro) REFERENCES catalogos.diametro_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_valvula_manobra_fabricante FOREIGN KEY (fabricante) REFERENCES catalogos.fabricantes (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_valvula_manobra_modelo FOREIGN KEY (modelo) REFERENCES catalogos.tipo_valvula_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_valvula_manobra_posicao FOREIGN KEY (posicao) REFERENCES catalogos.posicao_valvula (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_valvula_manobra_sentido_fechamento_horario FOREIGN KEY (sentido_fechamento_horario) REFERENCES catalogos.direcao_fechamento_valvula (codigo) ON UPDATE CASCADE ON DELETE RESTRICT
)
INHERITS (
    sistema_agua.ativo_pontual
);

CREATE INDEX idx_valvula_manobra_geom ON sistema_agua.valvula_manobra USING gist (geom);

