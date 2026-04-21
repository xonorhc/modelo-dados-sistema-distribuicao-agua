-- TYPE: status_adocao
CREATE TABLE IF NOT EXISTS catalogos.status_adocao(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: gestor_ativo
CREATE TABLE IF NOT EXISTS catalogos.gestor_ativo(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: proprietario_ativo
CREATE TABLE IF NOT EXISTS catalogos.proprietario_ativo(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_limite_elevatoria_agua
CREATE TABLE IF NOT EXISTS catalogos.tipo_limite_elevatoria_agua(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_limite_reservatorio
CREATE TABLE IF NOT EXISTS catalogos.tipo_limite_reservatorio(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_limite_abastecimento
CREATE TABLE IF NOT EXISTS catalogos.tipo_limite_abastecimento(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_tubo_camisa
CREATE TABLE IF NOT EXISTS catalogos.tipo_tubo_camisa(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_valvula_retencao
CREATE TABLE IF NOT EXISTS catalogos.tipo_valvula_retencao(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_hidrante
CREATE TABLE IF NOT EXISTS catalogos.tipo_hidrante(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_valvula
CREATE TABLE IF NOT EXISTS catalogos.tipo_valvula(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_descarga
CREATE TABLE IF NOT EXISTS catalogos.tipo_descarga(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_valvula_pressao
CREATE TABLE IF NOT EXISTS catalogos.tipo_valvula_pressao(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_bomba
CREATE TABLE IF NOT EXISTS catalogos.tipo_bomba(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_ligacao
CREATE TABLE IF NOT EXISTS catalogos.tipo_ligacao(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_hidrometro
CREATE TABLE IF NOT EXISTS catalogos.tipo_hidrometro(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_valvula_ramal
CREATE TABLE IF NOT EXISTS catalogos.tipo_valvula_ramal(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_reservatorio
CREATE TABLE IF NOT EXISTS catalogos.tipo_reservatorio(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_poco
CREATE TABLE IF NOT EXISTS catalogos.tipo_poco(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_macromedidor
CREATE TABLE IF NOT EXISTS catalogos.tipo_macromedidor(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_valvula_sistema
CREATE TABLE IF NOT EXISTS catalogos.tipo_valvula_sistema(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_conexao
CREATE TABLE IF NOT EXISTS catalogos.tipo_conexao(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_ramal_predial
CREATE TABLE IF NOT EXISTS catalogos.tipo_ramal_predial(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_ativo_rede_agua
CREATE TABLE IF NOT EXISTS catalogos.tipo_ativo_rede_agua(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_atribuicao_hidrante
CREATE TABLE IF NOT EXISTS catalogos.tipo_atribuicao_hidrante(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: ciclo_vida
CREATE TABLE IF NOT EXISTS catalogos.ciclo_vida(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: fabricante
CREATE TABLE IF NOT EXISTS catalogos.fabricantes(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: diametro_tubo_camisa
CREATE TABLE IF NOT EXISTS catalogos.diametro_tubo_camisa(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_enchimento_tubo_camisa
CREATE TABLE IF NOT EXISTS catalogos.tipo_enchimento_tubo_camisa(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: direcao_fechamento_valvula
CREATE TABLE IF NOT EXISTS catalogos.direcao_fechamento_valvula(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: status_valvula
CREATE TABLE IF NOT EXISTS catalogos.status_valvula(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: confiabilidade_espacial
CREATE TABLE IF NOT EXISTS catalogos.confiabilidade_espacial(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: fonte_espacial
CREATE TABLE IF NOT EXISTS catalogos.fonte_espacial(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: diametro_agua
CREATE TABLE IF NOT EXISTS catalogos.diametro_agua(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: fabricantes_hidrante
CREATE TABLE IF NOT EXISTS catalogos.fabricantes_hidrante(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_interligacao
CREATE TABLE IF NOT EXISTS catalogos.tipo_interligacao(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: material_rede_agua
CREATE TABLE IF NOT EXISTS catalogos.material_rede_agua(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_bomba_agua
CREATE TABLE IF NOT EXISTS catalogos.tipo_bomba_agua(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: material_ramal_agua
CREATE TABLE IF NOT EXISTS catalogos.material_ramal_agua(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_filtragem_abastecimento
CREATE TABLE IF NOT EXISTS catalogos.tipo_filtragem_abastecimento(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_estacao_tratamento_agua
CREATE TABLE IF NOT EXISTS catalogos.tipo_estacao_tratamento_agua(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_agua
CREATE TABLE IF NOT EXISTS catalogos.tipo_agua(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

-- TYPE: tipo_valvula_agua
CREATE TABLE IF NOT EXISTS catalogos.tipo_valvula_agua(
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
