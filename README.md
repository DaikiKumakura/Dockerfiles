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

## Maintained representative environments

| Directory | Base | Tool version | Maintenance scope |
| --- | --- | --- | --- |
| seqkit | Ubuntu 24.04 | Ubuntu package 2.3.1+ds-2ubuntu0.3 | Representative FASTA statistics check |
| MAFFT | Ubuntu 24.04 | Ubuntu package 7.505-1 | Representative two-sequence alignment check |

The GitHub Actions job builds both Dockerfiles and executes tiny FASTA inputs. It does not publish images to Docker Hub. Read the Actions result before treating a commit as build-verified. The Ubuntu base tag is not digest-pinned; builds are not claimed to be bit-identical.

Other directories remain historical definitions, including the older metagenomic environments. They have not been rebuilt or validated by this maintenance pass. Keeping them does not imply current support. Do not replace their environments in a scientific analysis without checking outputs and compatibility.
