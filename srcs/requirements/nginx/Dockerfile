FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install nginx openssl

RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/ssl/certs/localhost.pem -keyout /etc/ssl/private/localhost.key -subj "/C=FR/ST=Paris/L=Paris/O=Nginx/OU=mbeaujar/CN=localhost"

COPY nginx.conf /etc/nginx/sites-available/localhost.conf
RUN ln -s /etc/nginx/sites-available/localhost.conf  /etc/nginx/sites-enabled/localhost.conf 
RUN rm -f /etc/nginx/sites-enabled/default /etc/nginx/sites-available/default

EXPOSE 443
# nginx -g 'daemon off;'
# exec for pid 1
ENTRYPOINT exec nginx -g 'daemon off;'
