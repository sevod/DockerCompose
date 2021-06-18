### Установка docker compose в ubuntu

````
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
````

### Команды

#### Посмотреть список вольюмов в докере
`docker volume ls`

#### Удалить вольюм db
`docker volume rm db`

#### Подробности про вольюм db
`docker volume inspect db`

#### Список сетей докера
`docker network  ls`

#### Подробности сети под названием bidge
`docker network inspect bridge`

#### [Много полезных команд](https://habr.com/ru/company/ruvds/blog/450312/)



