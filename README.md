# docker-devkitpro
This is a modification of nonameentername's docker file. This will download both devkitARM and devkitPRO perl scripts and run it within the container. The latest LTS version of Ubuntu is used and both devkitARM and devkitPRO are installed in `/opt/devkitpro`. Note that docker must be installed in order to use this script.

To build the container:
    
    docker build -t devkitpro .
    

## Usage 
Compile homebrew software:

    cd /Path/to/makefile
    docker run -v $(pwd):/source -it devkitpro make

Sending a 3dsx file with 3dslink:

    cd /Path/to/3dsx
    docker run -v $(pwd):/source -it devkitpro /opt/devkitpro/devkitARM/bin/3dslink -a 3ds_ip source.3dsx
