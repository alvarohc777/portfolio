# Stage 1: Build Stage
FROM node:slim AS build
WORKDIR /portfolio/
COPY . .
RUN npm install -g @quasar/cli
RUN npm install
RUN quasar build

RUN npm install
RUN quasar build

# Stage 2: Final Stage
FROM node:slim
WORKDIR /app/
COPY --from=build /portfolio/dist/spa/ /app/
RUN npm install -g @quasar/cli
