FROM node:lts-buster

WORKDIR /home/apps


# install libvips (for sharp)
COPY ./vips-8.10.6.tar .
RUN tar -xf vips-8.10.6.tar \
    && cd vips-8.10.6 \
    && ./configure\
    && make \
    && make install \
    && ldconfig

# install node-gyp (to install sharp) and sharp (for cordova-res)
RUN npm install -g node-gyp \
    && npm install --unsafe-perm -g sharp

RUN npm install --unsafe-perm -g @ionic/cli@6.16.1 \
    native-run \
    cordova-res

RUN export NODE_OPTIONS="--max-old-space-size=8192"

EXPOSE 8100
VOLUME /home/apps

CMD [ "/bin/bash" ]