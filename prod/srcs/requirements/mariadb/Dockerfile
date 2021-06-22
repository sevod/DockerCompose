FROM alpine:3.12

RUN apk update
RUN apk upgrade
RUN apk add vim bash
RUN apk add mariadb mariadb-client
#telnet
RUN apk add busybox-extras

COPY ./conf/my.cnf /etc/my.cnf
COPY ./conf/mariadb.sql mariadb.sql
COPY ./tools/start.sh start.sh
RUN chmod +x start.sh

RUN mkdir /run/mysqld
RUN mariadb-install-db -u root

EXPOSE 3306

RUN bash start.sh

ENTRYPOINT ["mysqld"]
CMD ["-u root"]