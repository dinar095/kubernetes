FROM alpine:3.12
RUN apk update && apk upgrade
RUN apk add lighttpd openrc
RUN rc default
RUN rc-update add lighttpd default
RUN echo "Lighttpd is running..." > /var/www/localhost/htdocs/index.html
RUN rc-service lighttpd stop
RUN rc-service lighttpd start
