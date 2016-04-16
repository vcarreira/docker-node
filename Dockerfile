FROM node:slim

MAINTAINER "Vitor Carreira" <vitor.carreira@gmail.com>

COPY entrypoint.sh /entrypoint.sh

RUN mkdir -p /var/www

WORKDIR /var/www

VOLUME /var/www

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    libnotify-bin \
    curl \
    git \
    wget \
    && rm -rf /var/lib/apt/lists/*

RUN npm install -g gulp

RUN npm install -g bower

ENTRYPOINT ["/entrypoint.sh"]

CMD ["npm", "-l"]
