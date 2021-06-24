# Общий конспект проекта

##Docker и Docker Compose

---

### Установка docker compose в ubuntu

````
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
````

### Команды docker

---

#### Посмотреть список вольюмов в докере
`docker volume ls`

#### Удалить вольюм db
`docker volume rm db`

#### Удалить все вольюмы
`docker volume  rm $(docker volume ls -q)`

#### Подробности про вольюм db
`docker volume inspect db`

#### Список сетей докера
`docker network  ls`

#### Подробности сети под названием bidge
`docker network inspect bridge`

#### [Много полезных команд по docker](https://habr.com/ru/company/ruvds/blog/450312/)

## [Adminer](https://www.adminer.org/)

---

## Redis

---

[Установка Redis + Wordpress](https://wpgutenberg.top/nastrojka-redis-dlja-wordpress/)

### Команды redis

#### можно посмотреть что происходит в redis
````
redis-cli monitor
````