FROM nginx

LABEL maintainer="Harold Solbrig <solbrig.harold@jhu.edu>"
LABEL version="0.1.0"

RUN apt-get -y update
RUN apt-get install -y git
RUN git clone https://github.com/ebmonfhir/publish

RUN sed -i 's#/usr/share/nginx/html;#/publish;#' /etc/nginx/conf.d/default.conf

# Get am image of vim into the container
RUN apt-get update -y
RUN apt-get install apt-file -y
RUN apt-file update 
RUN apt-get install vim -y

EXPOSE 80
