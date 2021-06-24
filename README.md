# DockerCompose
Учебный проект по изучению Docker Compose, yaml - файлов и Docker контейнеров. Все контейнеры реализованы на Alpine linux. Непосредственно сам проект находится в папке prod.

## Файл [SUMMARY.md](https://github.com/sevod/DockerCompose/blob/main/SUMMARY.md) является общим конспектом информации, которую я нашел для этого проекта.

## Запуск проекта
Для запуска проекта переходим в папку prod. Запускается стандартным make (Makefile, это требование ТЗ).
````
make
````

Так же можно запустить стандартной командой Docker Compose. При запуске, не ошибитесь с путями к docker-compose.yml.
````
docker-compose -f ./srcs/docker-compose.yml up --build -d
````





