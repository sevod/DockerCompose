FROM alpine:3.13.5

RUN apk update
RUN apk add vim bash vsftpd

#RUN adduser -D ftpsecure -s=/sbin/nologin -G root
#RUN echo -e "123456\n123456\n" | passwd ftpsecure

RUN echo -e "123456\n123456\n" | passwd

COPY ./conf/vsftpd.conf /etc/vsftpd/vsftpd.conf


EXPOSE 20 21 21000

ENTRYPOINT ["vsftpd"]
CMD ["/etc/vsftpd/vsftpd.conf"]
