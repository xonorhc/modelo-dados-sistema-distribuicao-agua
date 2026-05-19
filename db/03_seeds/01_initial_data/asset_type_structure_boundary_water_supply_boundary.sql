-- Dicionário de Dados: Pontos de Entrega ou Fronteiras de Suprimento
-- TABELA: catalogos.tipo_unidade_producao (Asset Type Structure Boundary Water Supply Boundary)
INSERT INTO catalogos.tipo_unidade_producao (codigo, descricao, detalhes)
VALUES
    (0, 'Desconhecido', NULL),
    (1, 'Área da ETA (Estação de Tratamento de Água)', 'Delimita todo o complexo industrial de tratamento. Exemplo: O polígono que engloba os decantadores, filtros, casa de química, laboratório e reservatórios de contato.'),
    (2, 'Área de Proteção de Poço', 'O perímetro de segurança ao redor de um poço profundo. Exemplo: A área cercada que protege a cabeça do poço e o quadro de comando, garantindo o raio de proteção sanitária contra contaminações.'),
    (3, 'Área de Interligação / Ponto de Entrega', 'Local onde ocorre a conexão entre dois sistemas distintos. Exemplo: O terreno onde está a câmara de válvulas e medidores que conecta a rede de uma concessionária estadual à rede de uma autarquia municipal.');

