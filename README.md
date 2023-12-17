# jenkins
Jenkins with docker client

[![Build](https://github.com/jkaninda/jenkins/actions/workflows/build.yml/badge.svg)](https://github.com/jkaninda/jenkins/actions/workflows/build.yml)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/jkaninda/jenkins?style=flat-square)
![Docker Pulls](https://img.shields.io/docker/pulls/jkaninda/jenkins?style=flat-square)

- [Docker Hub](https://hub.docker.com/r/jkaninda/jenkins)
- [Github](https://github.com/jkaninda/jenkins)

## Tools:
- docker client
- jq
- k6
## Docker compose file :
```yaml
version: '3.7'
services:
  jenkins:
    image: jkaninda/jenkins:lts
    container_name: jenkins
    user: root
    ports:
      - 8080:8080
      - 50000:50000
    volumes:
      - ./data:/var/jenkins_home
      - /var/run/docker.sock:/var/run/docker.sock
      - ~/.ssh/:/root/.ssh
```
## Run 
```sh
docker compose up -d
```
