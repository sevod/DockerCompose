FROM alpine:3.13.5
RUN apk update
RUN apk upgrade
RUN apk add vim bash nginx
#telnet
RUN apk add busybox-extras

RUN mkdir /run/nginx
COPY ./conf/default.conf /etc/nginx/conf.d
COPY ./conf/about.html /var/www/about.html

EXPOSE 80

ENTRYPOINT ["nginx"]
CMD ["-g",  "daemon off;"]

