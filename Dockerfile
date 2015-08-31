#
# Builds container with avr-gcc to build firmware for keyboards
#
# docker build -t avr_gcc .
# docker run --rm -v $PWD/ergo_tmk:/home/builder avr_gcc
#

FROM debian:jessie
ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -yq install build-essential make gcc gcc-avr binutils-avr avr-libc
RUN useradd builder -mU
WORKDIR /home/builder/keyboard/ergodox

# build with jt keymap
CMD cd /home/builder/keyboard/ergodox && \
  make -f Makefile.pjrc clean && \
  make -f Makefile.pjrc jt

