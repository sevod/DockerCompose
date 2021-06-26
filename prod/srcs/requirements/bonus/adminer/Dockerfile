FROM alpine:3.13.5

RUN apk update
RUN apk add vim bash
RUN apk add php7 php7-fpm php7-mysqli php7-session

#telnet
RUN apk add busybox-extras

COPY ./conf/adminer-4.8.1.php /var/www/html/adminer.php
COPY ./conf/www.conf /etc/php7/php-fpm.d/www.conf

ENTRYPOINT ["/usr/sbin/php-fpm7"]
CMD ["-F"]




