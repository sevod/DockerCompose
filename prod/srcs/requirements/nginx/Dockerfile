FROM	alpine:3.12
RUN apk update
RUN apk upgrade
RUN apk add vim bash nginx openssl
#RUN apk add openssh supervisor
#telnet
RUN apk add busybox-extras

#RUN ssh-keygen -A
RUN mkdir /run/nginx
# COPY ./srcs/ssl /etc/nginx/ssl

RUN openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=RT/L=Kazan/CN=ipasta" -newkey rsa:2048 -keyout /etc/ssl/nginx-selfsigned.key -out /etc/ssl/nginx-selfsigned.crt;


#COPY ./srcs/index.html /var/www/index.html
#COPY ./srcs/sshd_config /etc/ssh/sshd_config
COPY ./srcs/default.conf /etc/nginx/conf.d
RUN echo -e "123456\n123456\n" | passwd
#RUN mkdir -p /var/log/supervisor
#COPY ./srcs/supervisord.conf /etc/supervisor/supervisord.conf
#COPY ./srcs/start.sh /etc/start.sh
#RUN chmod +x /etc/start.sh
EXPOSE 443
CMD nginx -g 'daemon off;'
