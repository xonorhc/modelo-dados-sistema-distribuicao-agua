-- TABELA: sistema_agua.ativo (Asset, base para herança)
CREATE SEQUENCE IF NOT EXISTS sistema_agua.ativo_id_global_seq AS bigint;

CREATE TABLE IF NOT EXISTS sistema_agua.ativo (
    -- Identificador global único
    id_global bigint DEFAULT nextval('sistema_agua.ativo_id_global_seq'),
    -- Identificadores internos
    id_objeto integer,
    id_ativo varchar(64),
    tipo_ativo smallint DEFAULT 0,
    nome varchar(64),
    -- Ciclo de vida
    situacao smallint NOT NULL DEFAULT 4,
    data_instalacao date,
    data_operacao date,
    data_desativacao date,
    proprietario smallint DEFAULT 1,
    responsavel_manutencao smallint DEFAULT 1,
    observacoes varchar(2000),
    -- Dados espaciais
    fonte_espacial smallint DEFAULT 0,
    confiabilidade_espacial smallint DEFAULT 0,
    latitude numeric(9, 7),
    longitude numeric(9, 7),
    altitude numeric(6, 3),
    -- Auditoria
    usuario_criacao varchar(255),
    data_criacao timestamptz,
    usuario_atualizacao varchar(255),
    data_atualizacao timestamptz,
    -- Restrições
    CONSTRAINT fk_id_global PRIMARY KEY (id_global),
    CONSTRAINT fk_situacao FOREIGN KEY (situacao) REFERENCES catalogos.situacoes (codigo),
    CONSTRAINT fk_proprietario FOREIGN KEY (proprietario) REFERENCES catalogos.proprietarios (codigo),
    CONSTRAINT fk_responsavel_manutencao FOREIGN KEY (responsavel_manutencao) REFERENCES catalogos.gestores (codigo),
    CONSTRAINT fk_fonte_espacial FOREIGN KEY (fonte_espacial) REFERENCES catalogos.fonte_espacial (codigo),
    CONSTRAINT fk_confiabilidade_espacial FOREIGN KEY (confiabilidade_espacial) REFERENCES catalogos.confiabilidade_espacial (codigo)
);

ALTER SEQUENCE sistema_agua.ativo_id_global_seq OWNED BY sistema_agua.ativo.id_global;
