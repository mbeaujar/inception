#!/bin/bash

mysql_install_db

/usr/bin/mysqld_safe --datadir="/var/lib/mysql" &

until echo "show databases;" 2> /dev/null | mysql -uroot
do
    echo "mysql is not up"
done

if [ -d "/var/lib/mysql/$DB_NAME" ]; then
    echo "database $DB_NAME already exist"
else

echo -e "\ny\n$DB_PASSWORD\n$DB_PASSWORD\ny\nn\ny\ny\n" | mysql_secure_installation 2> /dev/null
echo "CREATE DATABASE IF NOT EXISTS $DB_NAME;" | mysql -uroot
echo "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD'" | mysql -uroot
echo "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD' WITH GRANT OPTION;" | mysql -uroot 
echo "FLUSH PRIVILEGES;" | mysql -uroot
mysql $DB_NAME -uroot -p$DB_PASSWORD < /wordpress.sql

fi
# close db
mysqladmin shutdown


# start mariadb with pid 1
exec mysqld -uroot --datadir="/var/lib/mysql"