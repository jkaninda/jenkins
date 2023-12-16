FROM jenkins/jenkins:lts
USER root
RUN apt-get update -qq \
    && apt-get install -qqy apt-transport-https ca-certificates curl gnupg2 software-properties-common jq
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN curl https://get.docker.com/ > dockerinstall && chmod 777 dockerinstall && ./dockerinstall

Run