#!/usr/bin/env sh

# run command CMD (defined in Dockerfile) in a new container using image java-streaming-server
# --rm   remove container when it exits
# -p     link host port with container port
# --name name of the container
docker run --rm -p 2205:2205 --name jss java-streaming-server
docker run --rm -p 2205:2205 --name jss -d java-streaming-server

# run sh in a new container (to "explore" it)
docker run -it java-streaming-server /bin/sh

# execute sh into a running container
docker exec -it <container_name> /bin/sh

# attach stdin, stdout & stderr to a running container
docker attach <container_name>
