-- TABELA: sistema_agua.valvula_ramal (Service Valve)
CREATE TABLE IF NOT EXISTS sistema_agua.valvula_ramal (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('VALVULA-RAMAL-' || lpad(id_objeto::text, 5, '0')) STORED,
    diametro smallint,
    fabricante smallint,
    codigo_serie varchar(64),
    modelo smallint,
    posicao smallint,
    sentido_fechamento_horario smallint,
    voltas_para_fechar numeric,
    operacional boolean DEFAULT TRUE,
    indicador_coluna boolean DEFAULT FALSE,
    CONSTRAINT fk_valvula_ramal_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_valvula_ramal (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_valvula_ramal_diametro FOREIGN KEY (diametro) REFERENCES catalogos.diametro_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_valvula_ramal_fabricante FOREIGN KEY (fabricante) REFERENCES catalogos.fabricantes (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_valvula_ramal_modelo FOREIGN KEY (modelo) REFERENCES catalogos.tipo_valvula_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_valvula_ramal_posicao FOREIGN KEY (posicao) REFERENCES catalogos.posicao_valvula (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_valvula_ramal_sentido_fechamento_horario FOREIGN KEY (sentido_fechamento_horario) REFERENCES catalogos.direcao_fechamento_valvula (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT chk_valvula_ramal_voltas_para_fechar_limite CHECK (voltas_para_fechar > 0)
)
INHERITS (
    sistema_agua.ativo_pontual
);

CREATE INDEX idx_valvula_ramal_geom ON sistema_agua.valvula_ramal USING gist (geom);

