-- Dicionário de Dados: Limites de Estações Elevatórias
-- TABELA: catalogos.tipo_unidade_elevatoria_agua (Asset Type Structure Boundary Water Pump Station Boundary)
INSERT INTO catalogos.tipo_unidade_elevatoria_agua (codigo, descricao, detalhes)
VALUES
    (0, 'Desconhecido', NULL),
    (1, 'EEA (Estação Elevatória de Água)', 'Refere-se à unidade principal que transporta água de um nível para outro. Exemplo: Uma EEAB (Água Bruta) que retira água do rio ou uma EEAT (Água Tratada) que envia água da ETA para os reservatórios da cidade.'),
    (2, 'Estação Pressurizadora (Booster)', 'Unidade instalada estrategicamente na rede para elevar a pressão em setores específicos. Exemplo: Uma casa de bombas em um bairro alto que recebe água da rede de distribuição e recalca (pressuriza) para as ruas que ficam no topo do morro.');

