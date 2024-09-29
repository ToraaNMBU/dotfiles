#!/bin/bash
# FILE: install.sh
# DESCRIPTION: Master setup script for nvim-docker
# AUTHOR: Thomas Patton
FROM ubuntu:22.04
# install directory
ENV INSTALL_DIR="/home/aastor1/"

RUN echo "Running Docker container setup..."
RUN mkdir -p $INSTALL_DIR

# Update XDG_CONFIG_HOME
RUN export XDG_CONFIG_HOME="${INSTALL_DIR}.config"
RUN export XDG_DATA_HOME="${INSTALL_DIR}.local/share"
RUN export XDG_STATE_HOME="${INSTALL_DIR}.local/state"
RUN export TERM="xterm-256color"
RUN export DISPLAY=":0"

RUN cd "$INSTALL_DIR"
RUN rm -rf "${INSTALL_DIR}.config"
RUN  apt-get update

RUN  apt-get install -y xclip
RUN apt-get update && apt-get install -y \
    git \
    ninja-build \
    gettext \
    libtool \
    libtool-bin \
    autoconf \
    automake \
    cmake \
    g++ \
    pkg-config \
    unzip \
    curl \
    python3 \
    python3-pip \
    sudo \
    software-properties-common \
    ca-certificates \
    wget \
    && rm -rf /var/lib/apt/lists/*

# NEOVIM
RUN wget https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz
RUN tar xzvf nvim-linux64.tar.gz
RUN  ln -s "${INSTALL_DIR}nvim-linux64/bin/nvim" /usr/local/bin/nvim
RUN  apt-get update && apt-get install -y python3-venv

# Git Repository (provided as an argument)

RUN  apt install git stow -y 


RUN cd $INSTALL_DIR && git clone https://github.com/ToraaNMBU/dotfiles.git -b ubuntu22.04 
#&& stow . 

# exit
RUN cd ~

