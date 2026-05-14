# Stage 1: Build Stage
FROM node:slim AS develop
WORKDIR /portfolio/

# COPY . .
COPY package*.json ./
RUN npm install -g @quasar/cli
RUN npm install

FROM develop as build
COPY . .
RUN quasar build


# Stage 2: Final Stage
FROM nginx:1.25.3-alpine3.18 AS production-stage
COPY --from=build /portfolio/dist/spa/ /usr/share/nginx/html
COPY nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf
