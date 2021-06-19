FROM alpine:3.12
RUN apk update && apk upgrade
RUN apk add supervisor nano php7 php7-fpm nginx php7-common php7-session php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom openrc
RUN rc default
RUN mkdir -p /usr/share/webapps/
RUN mkdir -p /run/nginx
RUN wget http://wordpress.org/latest.tar.gz -P /usr/share/webapps/
RUN tar -C /usr/share/webapps/ -xzvf /usr/share/webapps/latest.tar.gz && rm /usr/share/webapps/latest.tar.gz
RUN ln -s /usr/share/webapps/wordpress/ /var/www/localhost/wordpress
COPY srcs/nginx.conf /etc/nginx/conf.d/default.conf
COPY srcs/wp-config.php /var/www/localhost/wordpress/wp-config.php
COPY srcs/supervisord.conf /etc/supervisord.conf
EXPOSE 5050
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]