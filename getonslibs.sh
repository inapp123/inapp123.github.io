#!/bin/sh
mkdir onslib
cd onslib
wget http://www.bzip.org/1.0.6/bzip2-1.0.6.tar.gz
git clone https://github.com/oneman/libflac.git
wget http://download.savannah.gnu.org/releases/freetype/freetype-2.8.1.tar.gz
tar xzvf freetype-2.8.1.tar.gz
git clone https://github.com/thorfdbg/libjpeg.git
hg clone http://hg.code.sf.net/p/mikmod/mercurial mikmod-mercurial
git clone https://github.com/solarus-games/libmodplug.git
wget http://downloads.xiph.org/releases/ogg/libogg-1.3.2.tar.gz
wget https://ftp-osl.osuosl.org/pub/libpng/src/libpng16/libpng-1.6.34.tar.gz
wget http://dl.maptools.org/dl/libtiff/tiff-3.8.2.tar.gz
wget http://downloads.xiph.org/releases/vorbis/libvorbis-1.3.5.tar.gz
#libvorlisfile
