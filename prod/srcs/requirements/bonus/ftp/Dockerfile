FROM alpine:3.13.5

RUN apk update
RUN apk add vim bash vsftpd

ARG ROOT_PASSWORD
RUN echo -e "$ROOT_PASSWORD\n$ROOT_PASSWORD\n" | passwd

COPY ./conf/vsftpd.conf /etc/vsftpd/vsftpd.conf

EXPOSE 20 21 21000

ENTRYPOINT ["vsftpd"]
CMD ["/etc/vsftpd/vsftpd.conf"]
