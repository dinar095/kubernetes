#!/bin/sh
/etc/init.d/mariadb setup
sed -i "s|.*skip-networking.*|#skip-networking|g" /etc/my.cnf.d/mariadb-server.cnf
/etc/init.d/mariadb restart
PASSWDDB='1234'
MAINDB='wordpress'
USER='admin'
mysql -e "CREATE DATABASE ${MAINDB} /*\!40100 DEFAULT CHARACTER SET utf8 */;"
mysql -e "CREATE USER $USER@'' IDENTIFIED BY '${PASSWDDB}';"
mysql -e "GRANT ALL PRIVILEGES ON ${MAINDB}.* TO '${USER}'@'%';"
mysql -e "FLUSH PRIVILEGES;"
mysqld_safe