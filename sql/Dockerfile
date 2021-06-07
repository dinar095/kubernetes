FROM alpine:3.12
RUN apk add mysql mysql-client openrc nano supervisor
RUN rc default
COPY srcs/start.sh /
COPY srcs/supervisor.conf /etc/supervisord.conf
RUN chmod +x start.sh
EXPOSE 3306
CMD ["sh","start.sh"]