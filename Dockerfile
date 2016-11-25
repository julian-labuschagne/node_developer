FROM node:boron

RUN apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y && apt-get autoremove -y && \
    npm install nodemon -g && \
    adduser --system --home /usr/src/app --uid 1000 nodedev && chown -Rv nodedev /usr/src/app

USER nodedev
WORKDIR /usr/src/app

