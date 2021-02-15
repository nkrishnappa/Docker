docker inspect host
docker run -itd --net=host --name=alpine alpine
docker inspect host

docker network ls
docker run -itd --name=networktest ubuntu
docker network inspect bridge

docker network disconnect bridge networktest

docker network create -d bridge my_bridge

docker network ls
docker network inspect my_bridge

docker run -d --net=my_bridge --name db training/postgres
docker inspect --format='{{json .NetworkSettings.Networks}}'  db
docker run -d --name web training/webapp python app.py

docker inspect --format='{{json .NetworkSettings.Networks}}'  web
docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' web

docker container exec -it db bash
docker network connect my_bridge web

docker container exec -it db bash
ping web





