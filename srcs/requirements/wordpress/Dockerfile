FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install php7.3-fpm php7.3-mysql
ADD https://wordpress.org/latest.tar.gz /tmp/latest.tar.gz

RUN tar -xvzf /tmp/latest.tar.gz
RUN mkdir -p /var/www/
RUN mv wordpress /var/www/wordpress
RUN mkdir -p /var/run/php
COPY wp-config.php /var/www/wordpress/wp-config.php
COPY www.conf /etc/php/7.3/fpm/pool.d/www.conf

RUN chmod -R 755 /var/www/wordpress && chown -R www-data:www-data /var/www/wordpress

# /usr/sbin/php-fpm7.3 
# /etc/init.d/php7.3-fpm start
# service php7.3-fpm start

EXPOSE 9000

ENTRYPOINT exec php-fpm7.3 -F