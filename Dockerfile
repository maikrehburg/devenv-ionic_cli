FROM node:lts-buster

WORKDIR /home/apps

RUN npm install -g @ionic/cli@6.16.1 && \
    export NODE_OPTIONS="--max-old-space-size=8192"


EXPOSE 8100
VOLUME /home/apps

CMD [ "/bin/bash" ]