FROM node:slim

WORKDIR /portfolio/
COPY . .

RUN npm install -g quasar
RUN npm install -g @quasar/cli
RUN npm install
RUN quasar build
WORKDIR /portfolio/dist/spa/