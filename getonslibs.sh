#!/bin/sh
mkdir onslib
cd onslib
wget http://www.bzip.org/1.0.6/bzip2-1.0.6.tar.gz
tar xzvf bzip2-1.0.6.tar.gz
wget https://ftp.osuosl.org/pub/xiph/releases/flac/flac-1.3.2.tar.xz
wget https://github.com/inapp123/inapp123.github.io/raw/master/ft281.zip
unzip ft281.zip
git clone https://github.com/thorfdbg/libjpeg.git
hg clone http://hg.code.sf.net/p/mikmod/mercurial mikmod-mercurial
git clone https://github.com/solarus-games/libmodplug.git
wget http://downloads.xiph.org/releases/ogg/libogg-1.3.2.tar.gz
tar xzvf libogg-1.3.2.tar.gz
wget https://ftp-osl.osuosl.org/pub/libpng/src/libpng16/libpng-1.6.34.tar.gz
tar xzvf libpng-1.6.34.tar.gz
wget http://dl.maptools.org/dl/libtiff/tiff-3.8.2.tar.gz
tar xzvf tiff-3.8.2.tar.gz
wget http://downloads.xiph.org/releases/vorbis/libvorbis-1.3.5.tar.gz
tar xzvf libvorbis-1.3.5.tar.gz
git clone https://github.com/webmproject/libwebp.git
git clone https://github.com/LuaDist/lua.git
hg clone http://hg.libsdl.org/SDL
hg clone http://hg.libsdl.org/SDL_image/
hg clone http://hg.libsdl.org/SDL_mixer/
hg clone http://hg.libsdl.org/SDL_ttf/
git clone https://github.com/Distrotech/smpeg
wget http://zlib.net/zlib-1.2.11.tar.gz
tar xzvf zlib-1.2.11.tar.gz
