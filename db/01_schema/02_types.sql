-- TYPE: status_adocao
CREATE TABLE IF NOT EXISTS catalogos.status_adocao (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: gestor_ativo
CREATE TABLE IF NOT EXISTS catalogos.gestor_ativo (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: proprietario_ativo
CREATE TABLE IF NOT EXISTS catalogos.proprietario_ativo (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_limite_elevatoria_agua
CREATE TABLE IF NOT EXISTS catalogos.tipo_limite_elevatoria_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_limite_reservatorio
CREATE TABLE IF NOT EXISTS catalogos.tipo_limite_reservatorio (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_limite_abastecimento
CREATE TABLE IF NOT EXISTS catalogos.tipo_limite_abastecimento (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_ativo_agua_tubo_camisa
CREATE TABLE IF NOT EXISTS catalogos.tipo_ativo_agua_tubo_camisa (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_ativo_agua_valvula_retencao
CREATE TABLE IF NOT EXISTS catalogos.tipo_ativo_agua_valvula_retencao (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_ativo_agua_hidrante
CREATE TABLE IF NOT EXISTS catalogos.tipo_ativo_agua_hidrante (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_ativo_agua_valvula
CREATE TABLE IF NOT EXISTS catalogos.tipo_ativo_agua_valvula (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_ativo_agua_descarga
CREATE TABLE IF NOT EXISTS catalogos.tipo_ativo_agua_descarga (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_ativo_agua_valvula_pressao
CREATE TABLE IF NOT EXISTS catalogos.tipo_ativo_agua_valvula_pressao (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_ativo_agua_bomba
CREATE TABLE IF NOT EXISTS catalogos.tipo_ativo_agua_bomba (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_ativo_agua_ligacao
CREATE TABLE IF NOT EXISTS catalogos.tipo_ativo_agua_ligacao (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_ativo_agua_hidrometro
CREATE TABLE IF NOT EXISTS catalogos.tipo_ativo_agua_hidrometro (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_ativo_agua_valvula_ramal
CREATE TABLE IF NOT EXISTS catalogos.tipo_ativo_agua_valvula_ramal (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_ativo_agua_reservatorio
CREATE TABLE IF NOT EXISTS catalogos.tipo_ativo_agua_reservatorio (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_ativo_agua_poco
CREATE TABLE IF NOT EXISTS catalogos.tipo_ativo_agua_poco (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_ativo_agua_macromedidor
CREATE TABLE IF NOT EXISTS catalogos.tipo_ativo_agua_macromedidor (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_ativo_agua_valvula_sistema
CREATE TABLE IF NOT EXISTS catalogos.tipo_ativo_agua_valvula_sistema (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_ativo_agua_conexao
CREATE TABLE IF NOT EXISTS catalogos.tipo_ativo_agua_conexao (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_ativo_agua_ramal_predial
CREATE TABLE IF NOT EXISTS catalogos.tipo_ativo_agua_ramal_predial (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_ativo_rede_agua
CREATE TABLE IF NOT EXISTS catalogos.tipo_ativo_rede_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_atribuicao_hidrante
CREATE TABLE IF NOT EXISTS catalogos.tipo_atribuicao_hidrante (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: ciclo_vida
CREATE TABLE IF NOT EXISTS catalogos.ciclo_vida (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: fabricante
CREATE TABLE IF NOT EXISTS catalogos.fabricantes (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: diametro_tubo_camisa
CREATE TABLE IF NOT EXISTS catalogos.diametro_tubo_camisa (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_enchimento_tubo_camisa
CREATE TABLE IF NOT EXISTS catalogos.tipo_enchimento_tubo_camisa (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: direcao_fechamento_valvula
CREATE TABLE IF NOT EXISTS catalogos.direcao_fechamento_valvula (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: status_valvula
CREATE TABLE IF NOT EXISTS catalogos.status_valvula (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: confiabilidade_espacial
CREATE TABLE IF NOT EXISTS catalogos.confiabilidade_espacial (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: fonte_espacial
CREATE TABLE IF NOT EXISTS catalogos.fonte_espacial (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: diametro_agua
CREATE TABLE IF NOT EXISTS catalogos.diametro_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: fabricantes_hidrante
CREATE TABLE IF NOT EXISTS catalogos.fabricantes_hidrante (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_ativo_agua_interligacao
CREATE TABLE IF NOT EXISTS catalogos.tipo_ativo_agua_interligacao (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: material_rede_agua
CREATE TABLE IF NOT EXISTS catalogos.material_rede_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_bomba_agua
CREATE TABLE IF NOT EXISTS catalogos.tipo_bomba_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: material_ramal_agua
CREATE TABLE IF NOT EXISTS catalogos.material_ramal_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_filtragem_abastecimento
CREATE TABLE IF NOT EXISTS catalogos.tipo_filtragem_abastecimento (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_estacao_tratamento_agua
CREATE TABLE IF NOT EXISTS catalogos.tipo_estacao_tratamento_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_agua
CREATE TABLE IF NOT EXISTS catalogos.tipo_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_valvula_agua
CREATE TABLE IF NOT EXISTS catalogos.tipo_valvula_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
