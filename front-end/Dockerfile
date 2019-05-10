FROM ubuntu:16.04
MAINTAINER Syed Saad Ahmed

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN mkdir ~/VUE_JS

WORKDIR "~/VUE_JS"

## cloning the real world Vue js reporsitory
RUN apt-get update && apt-get install -y git curl apt-transport-https apt-utils
RUN git clone https://github.com/gothinkster/vue-realworld-example-app.git

## installing dependencies for YARN
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get -y install yarn

## NODE JS update for tarn to be installed
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs

WORKDIR "vue-realworld-example-app"

## install yarn dependencies
RUN yarn install

## serve with hot reload at localhost:8080
EXPOSE 80


ENTRYPOINT [ "sh", "-c", "yarn serve" ]