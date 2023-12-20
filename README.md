# jenkins
Jenkins with docker client

[![Build](https://github.com/jkaninda/jenkins/actions/workflows/build.yml/badge.svg)](https://github.com/jkaninda/jenkins/actions/workflows/build.yml)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/jkaninda/jenkins?style=flat-square)
![Docker Pulls](https://img.shields.io/docker/pulls/jkaninda/jenkins?style=flat-square)

- [Docker Hub](https://hub.docker.com/r/jkaninda/jenkins)
- [Github](https://github.com/jkaninda/jenkins)

## Tools:
- docker client
- helm
- kustomize
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
```
## Run 
```sh
docker compose up -d
```

```yaml
version: '3.7'
services:
  jenkins:
    image: jkaninda/jenkins:lts
    user: root
    ports:
      - 8080:8080
      - 50000:50000
    volumes:
      - data:/var/jenkins_home
      - /var/run/docker.sock:/var/run/docker.sock
    deploy:
      mode: replicated
      replicas: 1
      restart_policy:
         condition: on-failure
      placement:
        constraints: 
          - node.role == manager
    healthcheck:
      test: ["CMD-SHELL", "curl -sS http://localhost:8080/login || exit 1"]
      interval: 30s
      timeout: 10s
      retries: 5
volumes:
  data:

```
