# algiorgio_microservices
algiorgio microservices repository

------------

#### docker-4. этапы работ:
1. Изучены сетевые драйвера типов none, host, bridge
2. Созданы docker-сети, на основе которых проект запущен в 2-х сетях типа bridge
3. Установлен docker-compose
4. Создано описание docker-инфраструктуры для docker-compose в YAML-формате - docker-compose.yml
5. В `docker-compose.yml` добавлены сетевые алиасы для работы проекта в 2-х сетях (см. пункт 2)
6. Параметризированны переменные окружения - добавлен файл .env, автоматически подхватываемый docker'ом
7. В .env задано базовое имя проекта - переменной `COMPOSE_PROJECT_NAME` присовенно пользовательское значение
8. Добавлен файл `docker-compose.override.yml` с данными о томах для контейнеров ui, post, comment
9. Добавлен режим `debug` при запуске Ruby-прложений
