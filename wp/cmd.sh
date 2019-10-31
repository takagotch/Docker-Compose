docker built -t dataonly
docker images dataonly
docker run -it --name dataonly dataonly
docker ps -a

docker-compose up -d
docker-compose ps
docker start -ia dataonly
docker-compose ps
docker-compose run webserver /bin/sh
docker-compose stop
docker-compose rm
docker export dataonly > backup.tar
ls
tar xvf backup.tar
tar xvf backup.tar


