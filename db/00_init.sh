#!/bin/bash
set -e

run_sql_recursive() {
  local search_path=$1
  echo ">> Explorando: $search_path"

  find "$search_path" -name "*.sql" | sort | while read -r file; do
    echo "   [Executando] $file"
    psql -v ON_ERROR_STOP=1 -U "$POSTGRES_USER" -d "$POSTGRES_DB" -f "$file"
  done
}

echo ">> Iniciando provisionamento do banco: $POSTGRES_DB"

# 1. Extensões
run_sql_recursive "/docker-entrypoint-initdb.d/01_extensions"

# 2. Schemas e Subpastas
run_sql_recursive "/docker-entrypoint-initdb.d/02_schema"

# 3. Funções
run_sql_recursive "/docker-entrypoint-initdb.d/03_functions"

# 4. Dados (Seeds)
run_sql_recursive "/docker-entrypoint-initdb.d/04_seeds"

# 5. Migrations
if [ -d "/docker-entrypoint-initdb.d/04_migrations" ]; then
  run_sql_recursive "/docker-entrypoint-initdb.d/05_migrations"
fi

echo ">> Finalizado com sucesso!"
