#!/bin/bash

echo "FineBI Docker Setup"
echo "==================="

# Скачиваем JDBC драйвер PostgreSQL
echo "Скачиваем JDBC драйвер PostgreSQL..."
mkdir -p finebi/lib
wget -O finebi/lib/postgresql-42.7.3.jar \
    https://jdbc.postgresql.org/download/postgresql-42.7.3.jar

# Проверяем Docker
echo "Проверяем Docker..."
docker --version
docker compose version

# Запускаем
echo "Запускаем контейнеры..."
docker compose up -d

echo "Готово!"
echo "FineBI доступен по: http://localhost"
echo "PostgreSQL доступен по: localhost:5432"
