# inception

#### commands utils : 
  - enter inside a container            : docker exec -it container_name sh
  - start docker-compose                : docker-compose up
  - start docker-compose in background  : docker-compose up -d 
  - build image before start            : docker-compose up --build
  - add path to cmd docker-compose      : docker-compose -f srcs/docker-compose.yml up
  - stop docker-compose                 : docker-compose stop
  - delete docker-compose               : docker-compose down --rmi all

#### tuto :
  - https://cloud.google.com/architecture/best-practices-for-building-containers
  - docker 12min: https://www.youtube.com/watch?v=YFl2mCHdv24
  - docker compose 12 min: https://www.youtube.com/watch?v=Qw9zlE3t8Ko

#### nginx :
  - https://stackoverflow.com/questions/29076194/using-add-host-or-extra-hosts-with-docker-compose


#### mariadb :
  - https://mariadb.com/kb/en/create-user/
  - secure installation : https://stackoverflow.com/questions/24270733/automate-mysql-secure-installation-with-echo-command-via-a-shell-script/35004940
  - secure db : https://mariadb.com/kb/en/mysql_secure_installation/
  - https://stackoverflow.com/questions/64320136/error-2002-hy000-cant-connect-to-mysql-server-on-192-168-1-15-115

#### network : 
  - https://docs.docker.com/compose/networking/#specify-custom-networks


#### PID 1 :
  - https://tandrepires.wordpress.com/2016/11/15/the-importance-of-pid-1-in-containers/

#### volumes :
  - https://docs.docker.com/compose/compose-file/compose-file-v2/#driver


#### wordpress :
  - start fpm : https://stackoverflow.com/questions/29859131/unable-to-bind-listening-socket-for-address-php-fpm

  - https://www.abyssproject.net/2020/05/monter-son-serveur-web-avec-debian-10-et-un-wordpress/

  - env : https://erikpoehler.com/2020/12/30/using-an-env-file-for-database-and-other-credentials/

  - https://medium.com/swlh/wordpress-deployment-with-nginx-php-fpm-and-mariadb-using-docker-compose-55f59e5c1a


#### adminer :
  - https://www.howtoforge.com/install-adminer-database-management-tool-on-debian-10/

#### redis :
  - https://onexlab-io.medium.com/docker-compose-redis-16a8ff3682b1
  - https://medium.com/gretathemes/how-to-speed-up-your-wordpress-website-with-redis-cache-d0259551150a
  - https://support.pagely.com/hc/en-us/articles/360015193272-Manually-Configuring-the-Redis-Object-Cache-Plugin-for-WordPress


#### ftp :
  - https://all-it-network.com/serveur-ftp-debian-10-proftpd/

#### prometheus :
  - https://docs.docker.com/config/daemon/prometheus/
  - https://gist.github.com/eiri/1102e1f3c168684b5a8b0e7a0f5a5a14
  - https://stackoverflow.com/questions/54896575/cannot-access-host-machine-from-docker-container
