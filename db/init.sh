#!/bin/bash
set -e

echo ">> Rodando extensions"
psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -f /docker-entrypoint-initdb.d/00_extensions.sql

echo ">> Criando schema"
for file in /docker-entrypoint-initdb.d/01_schema/*.sql; do
  psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -f "$file"
done

echo ">> Criando funções"
for file in /docker-entrypoint-initdb.d/02_functions/*.sql; do
  psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -f "$file"
done

echo ">> Inserindo dados"
for file in /docker-entrypoint-initdb.d/03_seeds/*.sql; do
  psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -f "$file"
done
