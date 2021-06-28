FROM	alpine:3.13.5
RUN apk update
RUN apk upgrade
RUN apk add vim bash nginx openssl
#telnet
RUN apk add busybox-extras

ARG DOMAIN_NAME
ARG CERTS_CRT
ARG CERTS_KEY
ARG DOMAIN_GRAFANA

RUN mkdir /run/nginx
COPY ./conf/default.conf /etc/nginx/conf.d/default.conf

COPY ./conf/ssl /etc/ssl

RUN sed -i "s/_DOMAIN_NAME/$DOMAIN_NAME/g" /etc/nginx/conf.d/default.conf
RUN sed -i "s/_CERTS_CRT/$CERTS_CRT/g" /etc/nginx/conf.d/default.conf
RUN sed -i "s/_CERTS_KEY/$CERTS_KEY/g" /etc/nginx/conf.d/default.conf
RUN sed -i "s/_DOMAIN_GRAFANA/$DOMAIN_GRAFANA/g" /etc/nginx/conf.d/default.conf

ENTRYPOINT ["nginx"]
CMD ["-g",  "daemon off;"]
