all:
	docker-compose -f ./srcs/docker-compose.yml up

clean:
	docker stop mariadb nginx wordpress
	docker rm mariadb nginx wordpress
	docker volume rm написать
	docker network rm

fclean: clean
	docker rmi mariadb nginx wordpress

re: clean
	docker-compose -f ./srcs/docker-compose.yml up -d