-- TABELA: sistema_agua.ligacao_agua (Service Connection)
CREATE TABLE IF NOT EXISTS sistema_agua.ligacao_agua (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Ligação de Água',
    matricula varchar(64),
    cliente_critico boolean DEFAULT FALSE,
    hidrometro_instalado boolean DEFAULT FALSE,
    CONSTRAINT fk_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_ligacao (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);
