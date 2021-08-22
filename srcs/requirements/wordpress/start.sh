#!/bin/bash

cd /var/www/wordpress

while  ! wp db check --allow-root; do
    echo "wait signal..."
    sleep 2
done

#while ! mariadb -h$DB_HOST -P3606 -u$DB_USER -p$DB_PASSWORD; do
#    sleep 2
#done


wp plugin install redis-cache --activate --allow-root
wp redis enable --allow-root

exec php-fpm7.3 -F