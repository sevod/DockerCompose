#wordpress
docker stop ssh
#sleep 1
docker rm ssh
docker rmi ssh
docker build -t ssh ../.
docker run --name ssh -itd -p 22:22 ssh
sleep 2
docker ps -a
