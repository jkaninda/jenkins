# jenkins
Jenkins with docker client

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
