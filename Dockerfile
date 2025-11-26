FROM tomcat:8.5-jdk8-openjdk

# Устанавливаем необходимые пакеты
RUN apt-get update && apt-get install -y \
    wget \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Создаем директорию для lib файлов
RUN mkdir -p /usr/local/tomcat/lib

# Копируем JDBC драйвер PostgreSQL
COPY ./finebi/lib/postgresql-42.7.3.jar /usr/local/tomcat/lib/

# Копируем FineBI webroot в Tomcat
COPY ./finebi/webapps/ /usr/local/tomcat/webapps/

# Настраиваем переменные окружения
ENV CATALINA_OPTS="-Xmx2g -Xms1g -Dfile.encoding=UTF-8"

EXPOSE 8080

CMD ["catalina.sh", "run"]
