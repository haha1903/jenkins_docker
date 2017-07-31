FROM jenkinsci/jenkins

USER root

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y build-essential

RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get install -y nodejs docker-ce
RUN npm config set registry https://registry.npm.taobao.org
RUN npm install -g gulp-cli
RUN npm install -g bower

ENV TZ=Asia/Shanghai

USER jenkins
