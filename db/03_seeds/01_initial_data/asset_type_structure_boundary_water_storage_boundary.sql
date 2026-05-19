-- Dicionário de Dados: Limites de Áreas de Armazenamento
-- TABELA: catalogos.tipo_unidade_reservacao (Asset Type Structure Boundary Water Storage Boundary)
INSERT INTO catalogos.tipo_unidade_reservacao (codigo, descricao, detalhes)
VALUES
    (0, 'Desconhecido', NULL),
    (1, 'Área do Reservatório Apoiado', 'Delimita o terreno onde se encontra o reservatório principal. Exemplo: O "Centro de Reservação" que contém o tanque de concreto, a casa de manobras e a área de urbanismo em volta.'),
    (2, 'Bacia de Contenção / Retenção', 'Área destinada a segurar o volume de água em caso de vazamento ou limpeza. Exemplo: Uma bacia de drenagem ao redor de tanques químicos ou grandes reservatórios para evitar inundações em áreas vizinhas se houver transbordo.'),
    (3, 'Área de Tanques de Armazenamento', 'Limite de instalações de tanques horizontais ou modulares. Exemplo: O pátio técnico que abriga tanques metálicos de reserva estratégica ou água bruta.'),
    (4, 'Área do Reservatório Elevado', 'A projeção do terreno ocupada pelo "Castelo dÁgua". Exemplo: O polígono que circunda a base da torre e sua área de proteção contra queda de objetos ou acesso não autorizado.'),
    (5, 'Área da Chaminé de Equilíbrio', 'Limite de ocupação dos dispositivos de proteção contra transientes. Exemplo: O pequeno cercado ao longo de uma adutora onde está instalada a torre de alívio de pressão.'),
    (6, 'Área do Sistema Hidropneumático', 'Delimitação da base onde estão os vasos de pressão e compressores. Exemplo: O abrigo ou sala técnica onde o sistema de pressurização está instalado.');

