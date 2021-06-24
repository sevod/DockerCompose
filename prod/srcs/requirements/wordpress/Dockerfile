FROM	alpine:3.13.5

RUN apk update
RUN apk upgrade
RUN apk add vim bash supervisor
RUN apk add php7 php7-fpm php7-mysqli php7-json
#redis-php
RUN apk add php7-pecl-redis php7-redis php7-ctype
#RUN apk add     php7-json
#RUN apk add  php7-ldap php7-iconv php7-gd php7-curl
#RUN apk add php7-soap php7-xml php7-xmlrpc php7-session php7-ctype php7-zlib php7-opcache libc6-compat
#telnet
RUN apk add busybox-extras

COPY ./conf/wordpress-5.7.2.zip /
RUN unzip /wordpress-5.7.2.zip
RUN mkdir /var/www
RUN mkdir /var/www/html
RUN cp -R /wordpress/* /var/www/html/
RUN rm -Rf /wordpress-5.7.2.zip
RUN rm -Rf /wordpress

COPY ./conf/wp-config.php /var/www/html/wp-config.php
COPY ./conf/www.conf /etc/php7/php-fpm.d/www.conf

COPY ./conf/object-cache.php /var/www/html/wp-content/object-cache.php

EXPOSE 9000

ENTRYPOINT ["/usr/sbin/php-fpm7"]
CMD ["-F"]


