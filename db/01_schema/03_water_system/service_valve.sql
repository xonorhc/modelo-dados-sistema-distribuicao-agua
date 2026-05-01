-- TABELA: sistema_agua.valvula_ramal (Service Valve)
CREATE TABLE IF NOT EXISTS sistema_agua.valvula_ramal (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Válvula de Ramal',
    diametro smallint,
    fabricante varchar(64),
    codigo_serie varchar(64),
    modelo smallint,
    posicao smallint,
    sentido_fechamento_horario smallint,
    voltas_para_fechar numeric,
    operacional boolean DEFAULT TRUE,
    indicador_coluna boolean DEFAULT FALSE,
    CONSTRAINT fk_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_valvula_ramal (codigo),
    CONSTRAINT fk_diametro FOREIGN KEY (diametro) REFERENCES catalogos.diametro_agua (codigo),
    CONSTRAINT fk_modelo FOREIGN KEY (modelo) REFERENCES catalogos.tipo_valvula_agua (codigo),
    CONSTRAINT fk_posicao FOREIGN KEY (posicao) REFERENCES catalogos.posicao_valvula (codigo),
    CONSTRAINT fk_sentido_fechamento_horario FOREIGN KEY (sentido_fechamento_horario) REFERENCES catalogos.direcao_fechamento_valvula (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);
