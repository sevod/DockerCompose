FROM alpine:3.13.5

RUN apk update
RUN apk upgrade
RUN apk add vim bash
RUN apk add mariadb mariadb-client
#telnet
RUN apk add busybox-extras

RUN mkdir /run/mysqld

COPY ./conf/my.cnf /etc/my.cnf
COPY ./conf/wordpress.sql /wordpress.sql
COPY ./tools/start.sh start.sh
RUN chmod +x start.sh

RUN mariadb-install-db -u root
RUN /start.sh

EXPOSE 3306

ENTRYPOINT ["mysqld"]
CMD ["-u root"]