FROM	alpine:3.13.5
RUN apk update
RUN apk add vim bash openssl openssh
#RUN apk add vim bash nginx openssl openssh supervisor
#telnet
RUN apk add busybox-extras

RUN ssh-keygen -A
RUN mkdir /run/nginx
COPY srcs/ssl /etc/nginx/ssl
COPY srcs/index.html /var/www/index.html
COPY srcs/sshd_config /etc/ssh/sshd_config
#COPY ./srcs/default.conf /etc/nginx/conf.d
RUN echo -e "123456\n123456\n" | passwd
#RUN mkdir -p /var/log/supervisor
#COPY ./srcs/supervisord.conf /etc/supervisor/supervisord.conf
#COPY ./srcs/start.sh /etc/start.sh
#RUN chmod +x /etc/start.sh
EXPOSE 22
#CMD sleep 10000
CMD /usr/sbin/sshd -D
