docker build -f Dockerfile.$1 -t andy-lab-1:88/beacon/redis-$1:$2 .
docker push andy-lab-1:88/beacon/redis-$1:$2
