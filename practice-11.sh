# 11. Create a container with the name ‘docker01’ and the following attributes:
# 	a. Map port 8080 on the local host to the container port 80
#   b. mount /data/list on the localhost to the directory /ls on the container and verify that you can access the contents.
#   c. Configure the container restart policy such that it will always start unless the container is manually stopped. 
# 	d. Use the latest version of nginx as the base image. 


mkdir /data/list

yum install docker 

docker container create -v /data/list:/ls:z -p 80:8080 --restart unless-stopped --name docker01 nginx 

docker container start docker01

docker exec -it docker01 /bin/bash

ls 
