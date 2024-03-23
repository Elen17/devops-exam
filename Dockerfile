ARG UBUNTU_VERSION='latest'
FROM ubuntu:${UBUNTU_VERSION}

LABEL descrption="Nginx Image based on UBUNTU with custom index.html"
RUN apt-get update && \
    apt-get install -y nginx

COPY files/index.html /var/www/html/
EXPOSE 80
EXPOSE 443
