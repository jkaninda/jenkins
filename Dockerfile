FROM jenkins/jenkins:lts
USER root
RUN apt-get update -qq \
    && apt-get install -qqy apt-transport-https ca-certificates curl gnupg2 software-properties-common jq
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN curl https://get.docker.com/ > dockerinstall && chmod 777 dockerinstall && ./dockerinstall

## Install K6
RUN curl https://github.com/grafana/k6/releases/download/v0.48.0/k6-v0.48.0-linux-amd64.tar.gz -L | tar xvz --strip-components 1
RUN mv k6 /usr/local/bin/
RUN chmod +x /usr/local/bin/k6