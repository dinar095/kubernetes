FROM	alpine:3.7

#install

RUN		apk update && apk upgrade && apk add vsftpd openrc openssl openssh
RUN		rc-update add vsftpd default

COPY	./srcs/vsftpd.conf ./etc/vsftpd/vsftpd.conf
RUN 	openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/ftps.key \
    	-out /etc/ssl/certs/ftps.crt -subj "/C=RU/ST=Kazan/L=Kazan/O=21/OU=School/CN=ejolyn"
RUN 	adduser -D user && echo "user:user" | chpasswd
RUN 	chmod +x /home/user && touch /var/log/vsftpd.log
# RUN		rc-service vsftpd restart
EXPOSE	21 1500
ENTRYPOINT	vsftpd /etc/vsftpd/vsftpd.conf
