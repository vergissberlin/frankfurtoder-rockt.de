FROM node:16.9.0


WORKDIR /src

# COPY app/dist /app
# https://github.com/Davigl/vue-music-player

ARG name=Davigl
ARG project=vue-music-player
ARG branch=master

ADD https://github.com/$name/$project/archive/$branch.tar.gz /tmp/$project-$branch.tar.gz
RUN tar xvfz /tmp/${project}-$branch.tar.gz -C /src --strip-components=1
RUN ls -la /src/
RUN yarn
RUN yarn build
RUN mv /src/dist /app
WORKDIR /app
