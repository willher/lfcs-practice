# 12.  Delete container ‘docker01’ and create a new container named ‘docker02’ with the same attributes listed in question 11. 

yum install docker

docker container stop docker01 

docker container rm docker01 

docker container create --name docker02 --restart unless-stopped -v /data/list:/ls:z -p 80:8080 nginx 
