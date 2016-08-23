FROM nginx

MAINTAINER Simeon Ackermann <amseon@web.de>

RUN apt-get update
RUN apt-get install -y git

# add demo site
COPY ./demo /usr/share/nginx/html

# add cubeviz
RUN git clone https://github.com/AKSW/cubevizjs.git /usr/share/nginx/html/lib/cubevizjs

WORKDIR /usr/share/nginx/html
VOLUME /usr/share/nginx/html

EXPOSE 80