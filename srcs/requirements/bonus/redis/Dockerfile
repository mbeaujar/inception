FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install redis-server procps

COPY conf/redis.conf /etc/redis/redis.conf

EXPOSE 6379

ENTRYPOINT exec redis-server /etc/redis/redis.conf