# devkitpro
#
# VERSION               0.1

FROM ubuntu:latest
MAINTAINER Werner R. Mendizabal "nonameentername@gmail.com"

ENV DEVKITPRO /opt/devkitpro
ENV DEVKITARM $DEVKITPRO/devkitARM
ENV DEVKITPPC $DEVKITPRO/devkitPPC

RUN apt-get install -y wget make build-essential

WORKDIR /devkit

ADD download_update_scripts.sh /devkit
ADD install.sh /devkit

RUN chmod +x ./download_update_script.sh && ./download_update_script.sh
RUN chmod +x ./install_update_scripts.sh && ./install_update_scripts.sh

WORKDIR /source
