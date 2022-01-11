# 12.  Delete container ‘docker01’ and create a new container named ‘docker02’ with the same attributes listed in question 11. 

docker container stop docker01

docker container rm docker01

docker container list 

#this will stop, delete, and confirm that docker01 is gone

docker container create -v /data/list:/ls:z --restart unless-stopped --name docker02 -p 80:8080 nginx 

docker container start docker02

#this creates the new container the same as the first. NOTE: you can use the up arrow to just change the container name