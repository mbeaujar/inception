
CMD=docker-compose
YAML= srcs/docker-compose.yml

up:
	@$(CMD) -f $(YAML) up -d --build

stop:
	@$(CMD) -f $(YAML) stop

down:
	@$(CMD) -f $(YAML) down

clear:
	@-$(CMD) -f $(YAML) down --rmi all
	@-sudo rm -rf /home/mbeaujar/data/db/*
	@-sudo rm -rf /home/mbeaujar/data/wp/*
	@-sudo rm -rf /home/mbeaujar/data/redis/*
	@-docker volume rm -f srcs_db srcs_wp

re : stop up
