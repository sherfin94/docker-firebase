# use latest Node LTS (currently Dubnium)
FROM node:dubnium

# set user to avoid permission issues
# (see https://github.com/nodejs/node-gyp/issues/1236)
USER node
RUN mkdir /home/node/.npm-global
ENV PATH=/home/node/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

# install Firebase CLI
RUN npm install -g firebase-tools --unsafe

# reset user back to root
USER root
