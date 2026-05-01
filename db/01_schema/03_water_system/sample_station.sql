-- TABELA: sistema_agua.ponto_coleta (Sample Station)
CREATE TABLE IF NOT EXISTS sistema_agua.ponto_coleta (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Ponto de Coleta',
    localizacao_estacao varchar(255),
    CONSTRAINT fk_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_amostra (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);
