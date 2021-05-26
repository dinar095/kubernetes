FROM alpine:3.13
RUN apk update
RUN apk add nginx openssl openssh supervisor
COPY srcs/nginx.conf /etc/nginx/conf.d
COPY srcs/supervisor.conf /etc/supervisord.conf
COPY srcs/script.sh /tmp/
RUN openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=Russia/L=Kazan/O=School21/OU=21School/CN=myssl" -newkey rsa:2048 -keyout etc/ssl/nginx-selfsigned.key -out /etc/ssl/nginx-selfsigned.crt
RUN rm /etc/nginx/conf.d/default.conf
RUN mkdir -p /run/nginx
EXPOSE 80 443
RUN chmod +x /tmp/script.sh
WORKDIR /tmp
CMD ["sh", "script.sh"]