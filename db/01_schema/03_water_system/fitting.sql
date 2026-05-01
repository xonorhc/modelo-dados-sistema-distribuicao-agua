-- TABELA: sistema_agua.conexao (Fitting)
CREATE TABLE IF NOT EXISTS sistema_agua.conexao (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Conexão',
    diametro smallint,
    diametro_secundario smallint,
    CONSTRAINT fk_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_conexao (codigo),
    CONSTRAINT fk_diametro FOREIGN KEY (diametro) REFERENCES catalogos.diametro_rede_agua (codigo),
    CONSTRAINT fk_diametro_secundario FOREIGN KEY (diametro_secundario) REFERENCES catalogos.diametro_rede_agua (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);
