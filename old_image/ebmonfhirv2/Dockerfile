FROM nginx

LABEL org.opencontainers.image.title = "EBMonFHIR publish image"
LABEL org.opencontainers.image.authors = "Harold Solbrig <solbrig@jhu.edu>"
LABEL org.opencontainers.image.version = "0.1.1"

RUN apt-get -y update && \
    apt-get install -y git && \
    git clone https://github.com/ebmonfhir/publish && \
     sed -i 's#/usr/share/nginx/html;#/publish/image;#' /etc/nginx/conf.d/default.conf


# Get am image of vim into the container
RUN apt-get install apt-file -y && \
    apt-file update && \
    apt-get install vim -y


EXPOSE 80
