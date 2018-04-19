# docker file for nodejs app
FROM node

MAINTAINER Viddhu

RUN mkdir -p /usr/nodeapplicationtest

WORKDIR /usr/nodeapplicationtest

COPY package.json /usr/nodeapplicationtest

RUN npm install

COPY . /usr/nodeapplicationtest

CMD [ "node", "app" ]