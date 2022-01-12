# 12.  Delete container ‘docker01’ and create a new container named ‘docker02’ with the same attributes listed in question 11. 

docker container list

docker container stop docker01

docker container rm docker01 

docker container create -p 80:8080 -v /usr/lib:/ls:z --restart unless-stopped --name docker02 nginx 