FROM	alpine:3.13.5
RUN apk update
RUN apk upgrade
RUN apk add vim bash redis
#RUN build-base tcl
#telnet
RUN apk add busybox-extras

COPY ./conf/redis.conf /etc/redis.conf

EXPOSE 6379
CMD redis-server /etc/redis.conf

