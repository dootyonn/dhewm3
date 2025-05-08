FROM ubuntu:25.04

RUN apt-get update && apt-get install -y \
    build-essential \
    ninja-build \
    cmake \
    gdb \
    cppcheck \
    valgrind \
    sudo \
    libsdl2-dev \
    libopenal-dev \
    libcurl4-openssl-dev

RUN echo 'ubuntu' | passwd --stdin ubuntu 
RUN usermod -aG sudo ubuntu

USER ubuntu