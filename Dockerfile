FROM node:10.8.0-stretch

RUN npm install -g @vue/cli
RUN npm install -g drakov

WORKDIR /projects

