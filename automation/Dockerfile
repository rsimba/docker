# Use the official Ubuntu image as the base image
FROM ubuntu:latest

# Author and Maintainer information
LABEL author="Ricardo Simba" \
      maintainer="rsimba@me.com"

# Install essential system tools for monitoring and management
RUN apt-get update && \
    apt-get install -y \
        git \
        sudo \
        neovim \
        iputils-ping \
        iproute2

# Install Python 3, pip, and development tools
RUN apt-get install -y \
        python3 \
        python3-pip \
        gcc \
        libc6-dev \
        libffi-dev \
        libssl-dev

# Upgrade pip to the latest version for Python 3
RUN pip3 install --upgrade pip

# Install additional Python libraries for network automation
RUN pip3 install \
        netmiko \
        napalm \
        ncclient \
        paramiko \
        nornir \
        jinja2 \
        requests \
        scapy \
        passlib \
        pyyaml \
        lxml \
        netaddr \
        pynetbox \
        ntc-templates \
        textfsm

# Set up a non-root user named "neteng" and give it sudo privileges without a password prompt
RUN useradd -ms /bin/bash neteng && \
    usermod -aG sudo neteng && \
    echo "neteng ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Switch to the non-root user
USER neteng

# Set the working directory to /app
WORKDIR /app

