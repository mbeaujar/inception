FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install mariadb-server

COPY conf/my.cnf /etc/mysql/my.cnf
COPY conf/wordpress.sql /

COPY tools/start.sh /
RUN chmod +x start.sh

#ENTRYPOINT bash 
ENTRYPOINT exec ./start.sh

EXPOSE 3306

