FROM alpine:3.12

# optionally:
RUN apk add nginx supervisor nano wget php7 php7-fpm php7-mysqli php7-xml php7-iconv php7-json php7-zlib php7-curl php7-mbstring php7-session


RUN wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.1.0-all-languages.tar.gz
RUN tar -xf phpMyAdmin-5.1.0-all-languages.tar.gz  &&  rm -rf phpMyAdmin-5.1.0-all-languages.tar.gz
RUN mv phpMyAdmin-5.1.0-all-languages /var/www/localhost/phpmyadmin


# insert my configs:
COPY srcs/nginx.config /etc/nginx/conf.d/default.conf
COPY srcs/config.inc.php /var/www/localhost/phpmyadmin/config.inc.php
COPY srcs/supervisor.conf /etc/supervisord.conf

RUN     mkdir -p /run/nginx

EXPOSE 5000

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]