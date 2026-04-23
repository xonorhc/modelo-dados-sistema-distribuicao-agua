CREATE TABLE IF NOT EXISTS catalogos.status_adocao (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.gestores (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.proprietarios (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.tipo_limite_elevatoria_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.tipo_reservatorio (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.tipo_limite_abastecimento (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.tipo_tubo_camisa (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.tipo_valvula_retencao (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.tipo_hidrante (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.tipo_valvula_fluxo (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.tipo_descarga (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.tipo_valvula_pressao (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.tipo_bomba (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.tipo_ligacao (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.tipo_ligacao (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.tipo_valvula_ramal (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.tipo_reservatorio (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.tipo_poco (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.tipo_macromedidor (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.tipo_valvula_sistema (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.tipo_conexao (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.tipo_ramal_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.tipo_rede_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.tipo_atribuicao_hidrante (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.situacoes (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.fabricantes (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.diametro_tubo_camisa (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.tipo_enchimento_tubo_camisa (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.direcao_fechamento_valvula (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.status_valvula (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.confiabilidade_espacial (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.fonte_espacial (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.diametro_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.fabricantes_hidrante (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.tipo_interligacao (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.tipo_material_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.tipo_modelo_bomba (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.tipo_material_ramal_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.tipo_filtragem_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.tipo_estacao_tratamento_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.tipo_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

CREATE TABLE IF NOT EXISTS catalogos.tipo_valvula_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
