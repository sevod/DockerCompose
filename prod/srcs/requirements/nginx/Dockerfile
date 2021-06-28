FROM	alpine:3.13.5
RUN apk update
RUN apk upgrade
RUN apk add vim bash nginx openssl
#telnet
RUN apk add busybox-extras

RUN mkdir /run/nginx
RUN openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=RT/L=Kazan/CN=ipasta" -newkey rsa:2048 -keyout /etc/ssl/nginx-selfsigned.key -out /etc/ssl/nginx-selfsigned.crt;
COPY ./conf/default.conf /etc/nginx/conf.d

EXPOSE 443

ENTRYPOINT ["nginx"]
CMD ["-g",  "daemon off;"]
