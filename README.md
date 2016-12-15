# docker-devkitpro
This is a modifications of nonameentername's docker file. This will download both devkitARM and devkitPRO perl scripts and install it within the container.

How to build the container:

    docker build -t devkitpro .

How to use:

    docker run -v $(pwd):/source -it devkitpro make
