# Dockerfiles
Dockerfiles for docker hub.

## How to build & upload Dockerfiles
1. build the dockerfile on local.  
```
docker build -t NAME .
```
2. regster the tag of image.  
```
docker tag <IMEGE ID> kumalpha/<NAME>:latest
```
3. push the tag.
```
docker push kumalpha/<NAME>:latest
```
4. confirm the images on cloud.  

## Tools
I make several tools on Docker. If you need to other tools, please contact me (https://daikikumakura.github.io/).  
