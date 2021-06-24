FROM alpine:3.13.5

RUN apk update
RUN apk upgrade
RUN apk add vim bash
RUN apk add mariadb mariadb-client
#telnet
RUN apk add busybox-extras

COPY ./conf/my.cnf /etc/my.cnf
COPY ./conf/mariadb.sql /mariadb.sql
COPY ./tools/start.sh start.sh
RUN chmod +x start.sh

RUN mkdir /run/mysqld
RUN mariadb-install-db -u root

EXPOSE 3306

RUN /start.sh

ENTRYPOINT ["mysqld"]
CMD ["-u root"]