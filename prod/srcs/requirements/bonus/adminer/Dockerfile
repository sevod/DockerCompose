FROM alpine:3.13.5

RUN apk update
RUN apk upgrade
RUN apk add vim bash

RUN apk add php7 php7-fpm php7-mysqli
#RUN apk php7-mbstring php7-json php7-session
#RUN apk add php7 php7-fpm php7-ldap php7-iconv php7-mbstring php7-mysqli php7-curl php7-gd php7-json
#RUN apk add php7-soap php7-xml php7-xmlrpc php7-session php7-ctype php7-zlib php7-opcache libc6-compat
#telnet
RUN apk add busybox-extras

#RUN mkdir /run/nginx
#RUN echo -e "123456\n123456\n" | passwd
#RUN mkdir -p /var/log/supervisor

#COPY ./conf/default.conf /etc/nginx/conf.d/default.conf

#COPY ./conf/supervisord.conf /etc/supervisor/supervisord.conf

COPY ./conf/adminer-4.8.1.php /var/www/html/adminer.php

COPY ./conf/www.conf /etc/php7/php-fpm.d/www.conf

#COPY tools/start.sh start.sh
#RUN chmod +x start.sh

EXPOSE 5000

ENTRYPOINT ["/usr/sbin/php-fpm7"]
CMD ["-F"]




