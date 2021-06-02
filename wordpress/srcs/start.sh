#!/bin/sh

sed -i 's|.*include "mod_fastcgi.conf"\s*=.*|include "mod_fastcgi.conf"|g' /etc/my.cnf.d/mariadb-server.cnf
/etc/init.d/lighttpd restart