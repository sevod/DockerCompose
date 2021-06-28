FROM alpine:3.13.5

RUN apk update
RUN apk upgrade
RUN apk add vim bash
RUN apk add mariadb mariadb-client
#telnet
RUN apk add busybox-extras

ARG MYSQL_ROOT_PASSWORD
ARG MYSQL_USER
ARG MYSQL_PASSWORD
ARG CONT_REDIS
ARG WP_BASE

RUN mkdir /run/mysqld

COPY ./conf/my.cnf /etc/my.cnf
COPY ./conf/wordpress.sql /wordpress.sql
COPY ./tools/start.sh start.sh
RUN chmod +x start.sh

RUN mariadb-install-db -u root
RUN /start.sh

ENTRYPOINT ["mysqld"]
CMD ["-u root"]