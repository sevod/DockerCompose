#wordpress
docker stop wp
#sleep 1
docker rm wp
docker rmi wp
docker build -t wp .
docker run --name wp -itd -p 9000:9000 wp
sleep 2
docker ps -a