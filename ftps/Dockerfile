FROM    alpine_local
RUN     apk add vsftpd openssl openrc vsftpd-doc
RUN     mv  /etc/vsftpd/vsftpd.conf /dflt.conf
COPY    srcs/vsftpd.conf /etc/vsftpd/vsftpd.conf
COPY    srcs/vsftpd.conf /etc/vsftpd/vsftpd.userlist
RUN     openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=Russia/L=Kazan/O=School21/OU=21School/CN=myssl" -newkey rsa:2048 -keyout /etc/ssl/vsftpd.key -out /etc/ssl/vsftpd.crt
COPY    srcs/start.sh .
RUN     chmod +x start.sh
EXPOSE  21 30021
CMD     ["sh", "start.sh"]