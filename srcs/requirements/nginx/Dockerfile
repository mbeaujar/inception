FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install nginx openssl procps

RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 \
    -nodes -out /etc/ssl/certs/localhost.pem \
    -keyout /etc/ssl/private/localhost.key \
    -subj "/C=FR/ST=Paris/L=Paris/O=Nginx/OU=mbeaujar/CN=mbeaujar.42.fr"

RUN rm -f /etc/nginx/sites-enabled/default /etc/nginx/sites-available/default

COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/default.conf /etc/nginx/sites-available/default.conf
RUN ln -s /etc/nginx/sites-available/default.conf  /etc/nginx/sites-enabled/default.conf 

EXPOSE 443

ENTRYPOINT exec nginx -g 'daemon off;'

