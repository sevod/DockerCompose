all:
	docker-compose -f ./srcs/docker-compose.yml up --build -d

stop:
	docker-compose -f ./srcs/docker-compose.yml down

#clean:
#	docker-compose -f ./srcs/docker-compose.yml down
#	docker stop mariadb nginx wordpress
#	docker rm mariadb nginx wordpress
#	docker volume rm n_wp sql
#	docker network rm ipasta_net

#fclean: clean
#	docker rmi mariadb nginx wordpress

re: stop
	docker-compose -f ./srcs/docker-compose.yml up --build -d