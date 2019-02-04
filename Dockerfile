FROM python:3.7-alpine as base
# prepare compiling environment as virtual package `build-dependencies`
RUN apk --update add --virtual build-dependencies \
  build-base \
  git

# install prerequisites
RUN apk --update add --no-cache curl autoconf automake libtool pkgconfig

WORKDIR /var/app

# install libpostal
RUN git clone https://github.com/openvenues/libpostal
WORKDIR /var/app/libpostal
RUN ./bootstrap.sh
RUN ./configure --datadir=/tmp
RUN make -j4
RUN make install
#RUN ./ldconfig
