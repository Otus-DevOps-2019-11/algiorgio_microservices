# algiorgio_microservices
algiorgio microservices repository

------------

#### docker-3. этапы работ:
1. Исходный код микросервисов загружен в директорию `src`
2. В директории каждого микросервиса создан файл `Dockerfile`
3. Произведена сборка `docker-образов` post, comment и ui
4. Для приложения содана сеть `reddit`
5. На базе созданных `docker-образов` и сети `reddit` запущены `docker-контейнеры`
6. В `Dockerfile` микросервиса `ui` изменили базовый образ с целью уменьшения размера образа
7. Создан docker-volume `reddit_db`
8. Docker-volume `reddit_db` подключен к docker-контейнеру с MongoDB
