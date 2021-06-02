FROM alpine:3.12
RUN apk add mysql mysql-client openrc nano
RUN rc default
COPY srcs/start.sh /
RUN chmod +x start.sh
EXPOSE 3306
CMD sh start.sh