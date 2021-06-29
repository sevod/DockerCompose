FROM	alpine:3.13.5

RUN apk update
RUN apk upgrade
RUN apk add vim bash
RUN apk add php7 php7-fpm php7-mysqli php7-json
RUN apk add php7-pecl-redis php7-redis php7-ctype
#telnet
RUN apk add busybox-extras

ARG MYSQL_USER
ARG MYSQL_PASSWORD
ARG WP_BASE
ARG CONT_MARIADB
ARG CONT_REDIS

COPY ./conf/wordpress-5.7.2.zip /
RUN unzip /wordpress-5.7.2.zip
RUN mkdir /var/www
RUN mkdir /var/www/html
RUN cp -R /wordpress/* /var/www/html/
RUN rm -Rf /wordpress-5.7.2.zip
RUN rm -Rf /wordpress

COPY ./conf/wp-config.php /var/www/html/wp-config.php
RUN sed -i "s/_MYSQL_USER/$MYSQL_USER/g" /var/www/html/wp-config.php
RUN sed -i "s/_MYSQL_PASSWORD/$MYSQL_PASSWORD/g" /var/www/html/wp-config.php
RUN sed -i "s/_WP_BASE/$WP_BASE/g" /var/www/html/wp-config.php
RUN sed -i "s/_CONT_MARIADB/$CONT_MARIADB/g" /var/www/html/wp-config.php

COPY ./conf/www.conf /etc/php7/php-fpm.d/www.conf

COPY ./conf/object-cache.php /var/www/html/wp-content/object-cache.php
RUN sed -i "s/_CONT_REDIS/$CONT_REDIS/g" /var/www/html/wp-content/object-cache.php

ENTRYPOINT ["/usr/sbin/php-fpm7"]
CMD ["-F"]