# 11. Create a container with the name ‘docker01’ and the following attributes:
# 	a. Map port 8080 on the local host to the container port 80
#   b. mount /data/list on the localhost to the directory /ls on the container and verify that you can access the contents.
#   c. Configure the container restart policy such that it will always start unless the container is manually stopped. 
# 	d. Use the latest version of nginx as the base image. 

mkdir /data/list

yum install docker 

docker container list

#creates the directory we need to mount in (b) and installs docker and verifies no containers are running currently 

docker container create -v /data/list:/ls:z --restart unless-stopped --name docker01 -p 80:8080 nginx

#this creates the container, mounts the directory, maps the ports, and configures the restart policy as well as uses the latest nginx image
#you may have to select which nginx image to use from a list. Ensure it is :latest

docker container start docker01

docker exec -it docker01 /bin/bash

cat docker.entrypoint.sh

#this will start your container, connect into it, and verify you can access the contents. ***QUESTION: you cat test.txt, is that a specific file?***