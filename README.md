# GHA_docker_image
[<img src="https://img.shields.io/badge/dockerhub-images-blue.svg?logo=Docker">](https://hub.docker.com/repository/docker/artsofcoding/ghadocker/general)

Github actions Docker image for DevOps of Github repos (in Docker for Windows).

For the direct Ubuntu equivalents see this great repository: https://github.com/beikeni/github-runner-dockerfile
This repository is largely based on the original repository above, along with some minor changes. The Docker image was build in Linux (Ubuntu).

# Running the image
The image can run on Docker desktop in Windows.

Instead of defining these in the start.sh file directly (see original repo):
```
REPOSITORY=$REPO
ACCESS_TOKEN=$TOKEN
```
It is possible with my docker image to provide these as environment variables to Docker directly. 
Moreover, "REPOSITORY" is printed in Docker, but not "ACCESS_TOKEN" because of security.

# Building your own image
You can construct the image yourself in Docker for Windows, but keep in mind that you need to convert the start.sh to a Linux file.

E.g. in notepad++:
```
Edit > EOL conversion > LF
```
