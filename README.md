# FineBI Docker Deployment

Полное развертывание FineBI с PostgreSQL и Nginx в Docker контейнерах.

## Архитектура

- **FineBI 6.0** - BI платформа (Tomcat 8.5 + JDK 8)
- **PostgreSQL 14** - база данных
- **Nginx 1.25** - reverse proxy
- **Docker Compose** - оркестрация контейнеров


## Доступ
FineBI через Nginx: http://localhost

FineBI напрямую: http://localhost:37799/webroot/decision

PostgreSQL: localhost:5432

## Структура проекта
text
finebi-docker/
├── db/init/           # SQL скрипты инициализации БД
├── nginx/conf/        # Конфигурация Nginx
├── docker-compose.yml # Оркестрация контейнеров
├── Dockerfile         # Образ FineBI
└── README.md          # Документация
## Данные для подключения
PostgreSQL
Хост: postgres (внутри Docker) или localhost (снаружи)

Порт: 5432

База: demodata

Пользователь: finebi_user

Пароль: finebi_password

## Таблицы
categories - категории товаров

customers - клиенты

products - товары

sales - продажи

# Запуск
docker compose up -d

# Остановка
docker compose down

# Просмотр логов
docker compose logs -f

# Пересборка
docker compose build --no-cache
##Проблемы и решения
Порт 5432 занят
Остановите системный PostgreSQL: sudo systemctl stop postgresql

Порт 80 занят
Измените порт Nginx в docker-compose.yml на 8080:80

