all:
	docker-compose -f ./srcs/docker-compose.yml up --build -d --remove-orphans 

stop:
	docker-compose -f ./srcs/docker-compose.yml down

fclean: stop
	rm -rf /home/ipasta/data/n_wp/*
	rm -rf /home/ipasta/data/sql/*
	docker volume rm n_wp
	docker volume rm sql

re: fclean
	docker-compose -f ./srcs/docker-compose.yml up --build -d --remove-orphans 



