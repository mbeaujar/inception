
CMD=docker-compose

all:
	$(CMD) -f srcs/docker-compose.yml up

force-build:
	$(CMD) -f srcs/docker-compose.yml up --build

clear:
	$(CMD) -f srcs/docker-compose.yml down --rmi all