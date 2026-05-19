# Modelo de Dados Geoespacial para Sistemas de Distribuição de Água

Este repositório contém a modelagem conceitual, lógica e física de um sistema de gerenciamento de ativos para abastecimento de água, implementado em **PostgreSQL** com a extensão espacial **PostGIS**. O projeto foi desenhado para suportar operações de cadastro técnico, gestão de ciclo de vida e análises espaciais de ativos.

## Tecnologias Utilizadas

* **Banco de Dados:** PostgreSQL
* **Extensão Espacial:** PostGIS (SRID 4674 - SIRGAS 2000)
* **Containerização:** Docker e Docker Compose

## Arquitetura do Modelo

O banco de dados está organizado em dois esquemas principais para garantir a separação de responsabilidades:

1. **`catalogos`**: Contém tabelas de referência (domínios) como tipos de materiais, diâmetros, fabricantes e situações de ciclo de vida.
2. **`sistema_agua`**: Contém as entidades operacionais e os ativos da rede.

### Herança de Tabelas

O modelo utiliza o conceito de herança do PostgreSQL para padronizar os atributos comuns a todos os ativos:

* **`sistema_agua.ativo`**: Tabela base que centraliza informações de ciclo de vida, proprietário, gestor e metadados de auditoria.
* **Ativos Pontuais**: Herdam de `ativo_pontual` (ex: Hidrantes, Bombas, Válvulas).
* **Ativos Lineares**: Herdam de `ativo_linear` (ex: Redes de água, Ramais, Tubos camisa).
* **Ativos Poligonais**: Herdam de `ativo_poligonal` (ex: Unidades de Reservação, Estações de Tratamento).

## Recursos Geoespaciais

* **Cálculos Automáticos**: Tabelas lineares e poligonais possuem colunas geradas (`STORED`) para cálculo automático de comprimento, área e perímetro via PostGIS.
* **Coordenadas Geográficas**: Latitude e longitude são extraídas automaticamente da geometria do objeto.
* **Indexação Espacial**: Todas as tabelas de ativos possuem índices `GIST` para otimização de consultas geográficas.

## Estrutura do Projeto

```text
db/
├── 00_extensions/      # Ativação do PostGIS
├── 01_schema/
│   ├── 02_catalogs/    # Definição das tabelas de domínio
│   ├── 03_water_system/# Definição dos ativos (bombas, hidrantes, redes, etc.)
│   └── 04_constraints.sql
├── 02_functions/       # Triggers e funções de automação
└── 03_seeds/           # Dados iniciais para os catálogos

```

## Como Instalar e Rodar

1. Certifique-se de ter o **Docker** e **Docker Compose** instalados.
2. Clone o repositório.
3. Execute o script de inicialização ou suba o container:
```bash
docker-compose up -d

```


4. O script `init.sh` processará automaticamente os esquemas, funções e dados iniciais na ordem correta.

## Documentação Adicional

Detalhes sobre os requisitos e os níveis de modelagem podem ser encontrados na pasta `docs/`:

* `1-requisitos.md`
* `2-modelo-conceitual.md`
* `3-modelo-logico.md`
* `4-modelo-fisico.md`

---
