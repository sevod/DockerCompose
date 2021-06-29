FROM alpine:3.13.5

RUN apk update
RUN apk upgrade
RUN apk add vim bash
#telnet
RUN apk add busybox-extras

RUN apk add grafana --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/
COPY ./conf/grafana.db /usr/share/grafana/data/grafana.db
WORKDIR /usr/share/grafana

RUN grafana-cli plugins install redis-datasource
RUN  mv /var/lib/grafana/plugins/redis-datasource /usr/share/grafana/data/plugins

ENTRYPOINT ["grafana-server"]