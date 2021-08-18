FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install mariadb-server

COPY my.cnf /etc/mysql/my.cnf

COPY start.sh /
RUN chmod +x start.sh

ENTRYPOINT exec ./start.sh

