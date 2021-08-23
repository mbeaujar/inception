FROM debian:buster


RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install vsftpd openssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 \
    -nodes -out /etc/ssl/certs/vsftpd.pem \
    -keyout /etc/ssl/private/vsftpd.key \
    -subj "/C=FR/ST=Paris/L=Paris/O=Nginx/OU=mbeaujar/CN=mbeaujar.42.fr"


COPY vsftpd.conf /etc/vsftpd/vsftpd.conf
COPY start.sh /start.sh
RUN mkdir -p /var/run/vsftpd/empty


EXPOSE 21 20 30020-30030

ENTRYPOINT exec sh ./start.sh