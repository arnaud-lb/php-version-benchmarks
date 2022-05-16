#!/bin/sh
set -e

sudo yum update -y
sudo yum groupinstall -y "Development Tools"
sudo yum install -y \
    util-linux \
    autoconf \
    file \
    gcc \
    gcc-c++ \
    glibc-devel \
    make \
    pkg-config \
    re2c \
    bison \
    ca-certificates \
    xz \
    dirmngr \
    libargon2-devel \
    libcurl-devel \
    libedit-devel \
    oniguruma-devel \
    libsodium \
    libsodium-devel \
    sqlite-devel \
    libxml2-devel \
    openssl1.1-devel \
    rsync \
    zlib-devel \
    time \
    bc
