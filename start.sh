# remove images and containers
docker rmi -f docker-autorefresh-example
docker rm -f docker-autorefresh-example
# build docker file
docker build -t  docker-autorefresh-example .
# run container
docker run --name  docker-autorefresh-example \
    -p 8090:8090 \
    -v "$(pwd)":/demo \
    -d docker-autorefresh-example