# devkitpro
#
# VERSION               0.1

FROM ubuntu:latest
MAINTAINER Werner R. Mendizabal "nonameentername@gmail.com"

#
# Let the shell know where the binaries are
#
ENV DEVKITPRO /opt/devkitpro
ENV DEVKITARM $DEVKITPRO/devkitARM
ENV DEVKITPPC $DEVKITPRO/devkitPPC

#
# Obtain needed tools from apt-get
#
RUN apt-get update
RUN apt-get install -y wget make build-essential

#
# To store the downloads and perl files
#
WORKDIR /devkit

ADD download_update_scripts.sh /devkit
ADD install_update_scripts.sh /devkit

RUN chmod +x ./download_update_scripts.sh && ./download_update_scripts.sh
RUN chmod +x ./install_update_scripts.sh && ./install_update_scripts.sh

#
# Set up a place where the user can store the source code
#
WORKDIR /source
