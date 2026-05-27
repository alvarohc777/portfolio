# Stage 1: Develop Stage
FROM node:slim AS develop
WORKDIR /portfolio/

COPY package*.json ./
RUN npm install -g @quasar/cli
RUN npm install

# Stage 2: Build Stage
FROM develop AS build
COPY . .
RUN quasar build


# Stage 3: Production Stage
FROM nginx:1.25.3-alpine3.18 AS production-stage
COPY --from=build /portfolio/dist/spa/ /usr/share/nginx/html
COPY nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf
