FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install php7.3-fpm php7.3-mysql wget php-redis curl mariadb-client procps
ADD https://wordpress.org/latest.tar.gz /tmp/latest.tar.gz

RUN tar -xvzf /tmp/latest.tar.gz
RUN mkdir -p /var/www/
RUN mv wordpress /var/www/wordpress
RUN mkdir -p /var/run/php
COPY conf/wp-config.php /var/www/wordpress/wp-config.php
COPY conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

RUN wget "http://www.adminer.org/latest.php" -O /var/www/wordpress/adminer.php
RUN chmod -R 755 /var/www/wordpress && chown -R www-data:www-data /var/www/wordpress

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY site /var/www/wordpress

EXPOSE 9000

COPY tools/start.sh /

RUN chmod +x ./start.sh

ENTRYPOINT exec ./start.sh