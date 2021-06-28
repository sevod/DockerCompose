FROM	alpine:3.13.5
RUN apk update
RUN apk upgrade
RUN apk add vim bash redis
#RUN build-base tcl
#telnet
RUN apk add busybox-extras

#ARG CONT_REDIS

COPY ./conf/redis.conf /etc/redis.conf
#RUN sed -i "s/_CONT_REDIS/$CONT_REDIS/g" /etc/redis.conf

ENTRYPOINT ["redis-server"]
CMD ["/etc/redis.conf"]

