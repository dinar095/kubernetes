FROM alpine:3.13
RUN apk update
RUN apk add nginx && apk add openssl
COPY srcs/nginx.conf /etc/nginx/conf.d
COPY srcs/script.sh /
RUN openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=Russia/L=Kazan/O=School21/OU=21School/CN=myssl" -newkey rsa:2048 -keyout /etc/nginx/conf.d/nginx-selfsigned.key -out /etc/nginx/conf.d/nginx-selfsigned.crt
RUN rm /etc/nginx/conf.d/default.conf
EXPOSE 80 443
RUN chmod +x script.sh
CMD ./script.sh
