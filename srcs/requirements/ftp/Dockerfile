FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install vsftpd
COPY vsftpd.conf /etc/vsftpd/vsftpd.conf
COPY start.sh /start.sh
RUN mkdir -p /var/run/vsftpd/empty


EXPOSE 21 20 30020-30030

ENTRYPOINT exec sh ./start.sh