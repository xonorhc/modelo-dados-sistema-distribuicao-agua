-- TABELA: sistema_agua.valvula_manobra (System Valve)
CREATE TABLE IF NOT EXISTS sistema_agua.valvula_manobra (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Válvula de Manobra',
    diametro smallint,
    fabricante varchar(64),
    codigo_serie bigint,
    modelo smallint,
    posicao smallint,
    sentido_fechamento_horario smallint,
    voltas_para_fechar numeric,
    operacional boolean DEFAULT TRUE,
    possui_bypass boolean DEFAULT FALSE,
    CONSTRAINT fk_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_valvula_sistema (codigo),
    FOREIGN KEY (diametro) REFERENCES catalogos.diametro_agua (codigo),
    FOREIGN KEY (modelo) REFERENCES catalogos.tipo_valvula_agua (codigo),
    FOREIGN KEY (posicao) REFERENCES catalogos.posicao_valvula (codigo),
    FOREIGN KEY (sentido_fechamento_horario) REFERENCES catalogos.direcao_fechamento_valvula (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);
