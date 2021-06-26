#wordpress
docker stop website
#sleep 1
docker rm website
docker rmi website
docker build -t website ../.
docker run --name website -d -p 8080:80 website
sleep 2
docker ps -a
