#!/bin/bash

mysql_install_db

/usr/bin/mysqld_safe --datadir="/var/lib/mysql" &

until echo "show databases;" | mysql -u root --skip-password
do
    clear
    echo "mysql is not up"
done


#DB_NAME=site
#DB_USER=mbeaujar
#DB_PASSWORD=inception

echo "CREATE DATABASE $DB_NAME;" | mysql -u root --skip-password
echo "CREATE USER '$DB_USER'@'%';" | mysql -u root --skip-password
echo "SET password FOR '$DB_USER'@'%' = password('$DB_PASSWORD');" | mysql -u root --skip-password
echo "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD' WITH GRANT OPTION;" | mysql -u root --skip-password
echo "FLUSH PRIVILEGES;" | mysql -u root --skip-password

mysql $DB_NAME -u root < /tmp/wordpress.sql

# close db
mysqladmin shutdown

# start mariadb with pid 1
exec mysqld -u root --datadir="/var/lib/mysql"