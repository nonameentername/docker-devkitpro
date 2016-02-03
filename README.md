# docker-devkitpro
Dockerfile to create a devkitpro environment for nds and gba development.

How to build:

    docker build -t devkitpro .

How to use:

    docker run -v $(pwd):/source -it devkitpro make
