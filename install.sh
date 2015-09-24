#!/bin/bash

mkdir -p /opt/devkitpro/libgba
mkdir -p /opt/devkitpro/libnds

chmod 777 /opt/devkitpro

wget -qO- http://downloads.sourceforge.net/project/devkitpro/devkitARM/devkitARM_r44/devkitARM_r44-x86_64-linux.tar.bz2 | tar jxv -C /opt/devkitpro
wget -qO- http://downloads.sourceforge.net/project/devkitpro/libgba/libgba-20150106.tar.bz2 | tar jxv -C /opt/devkitpro/libgba
wget -qO- http://downloads.sourceforge.net/project/devkitpro/libnds/1.5.10/libnds-1.5.10.tar.bz2 | tar jxv -C /opt/devkitpro/libnds
wget -qO- http://downloads.sourceforge.net/project/devkitpro/libfat/1.0.14/libfat-nds-1.0.14.tar.bz2 | tar jxv -C /opt/devkitpro/libnds
wget -qO- http://downloads.sourceforge.net/project/devkitpro/dswifi/0.3.17/dswifi-0.3.17.tar.bz2 | tar jxv -C /opt/devkitpro/libnds
wget -qO- http://downloads.sourceforge.net/project/devkitpro/maxmod/maxmod-nds-1.0.9.tar.bz2 | tar jxv -C /opt/devkitpro/libnds
wget -qO- http://downloads.sourceforge.net/project/devkitpro/filesystem/0.9.12/libfilesystem-0.9.12.tar.bz2 | tar jxv -C /opt/devkitpro/libnds
wget -qO- http://downloads.sourceforge.net/project/devkitpro/default%20arm7/0.5.27/default_arm7-0.5.27.tar.bz2 | tar jxv -C /opt/devkitpro/libnds
