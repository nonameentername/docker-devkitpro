# devkitpro
#
# VERSION               0.1

FROM ubuntu:14.04
MAINTAINER Werner R. Mendizabal "nonameentername@gmail.com"

RUN apt-get install -y wget make

ADD install.sh /
RUN ./install.sh

ENV DEVKITPRO /opt/devkitpro
ENV DEVKITARM $DEVKITPRO/devkitARM

WORKDIR /source
