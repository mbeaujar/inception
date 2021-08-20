
CMD=docker-compose
YAML= srcs/docker-compose.yml

up:
	@$(CMD) -f $(YAML) up -d --build

stop:
	@$(CMD) -f $(YAML) stop

down:
	@$(CMD) -f $(YAML) down

clear:
	$(CMD) -f $(YAML) down --rmi all

re : stop up
