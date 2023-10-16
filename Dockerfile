FROM node:20.8.1 as build

WORKDIR /src

# https://github.com/Davigl/vue-music-player
ARG name=Davigl
ARG project=vue-music-player
ARG branch=master

ADD https://github.com/$name/$project/archive/$branch.tar.gz /tmp/$project-$branch.tar.gz
RUN tar xvfz /tmp/${project}-$branch.tar.gz -C /src --strip-components=1

RUN yarn
COPY data/ /src
RUN yarn build

FROM netresearch/node-webserver:latest as webserver
COPY --from=build /src/dist /app/public
WORKDIR /app/public
