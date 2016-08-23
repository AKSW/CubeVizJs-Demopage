FROM nginx

MAINTAINER Simeon Ackermann <amseon@web.de>

RUN apt-get update
RUN apt-get install -y git

# add demo site
COPY ./demo /usr/share/nginx/html

WORKDIR /usr/share/nginx/html
VOLUME /usr/share/nginx/html

EXPOSE 80