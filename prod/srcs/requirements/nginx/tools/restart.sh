#wordpress
docker stop nginx
#sleep 1
docker rm nginx
docker rmi nginx
docker build -t nginx .
docker run --name nginx -d -p 80:80 -p 443:443 nginx
sleep 2
docker ps -a
