# Use the official Ubuntu image as the base image
FROM ubuntu:latest

# Author and Maintainer information
LABEL author="Ricardo Simba" \
  maintainer="rsimba@me.com"

# Set noninteractive mode to prevent timezone prompt during installation
ENV DEBIAN_FRONTEND=noninteractive

# Install essential network utilities
RUN apt-get update && \
    apt-get install -y \
        iputils-ping \
        dnsutils \
        curl \
        wget \
        iproute2 \
        openssh-client

# Networking Analysis Tools
RUN apt-get install -y \
        nmap \
        tcpdump \
        iperf \
        traceroute \
        dnsutils \
        mtr \
        iftop

# Network Troubleshooting Tools
RUN apt-get install -y \
        arping \
        ngrep \
        nload \
        telnet \
        ftp \
        tftp

# System Monitoring and Management Tools
RUN apt-get install -y \
        git

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

# Install Neovim
RUN apt-get install -y neovim

# Network Automation Tools and Libraries
RUN pip3 install \
        ansible \
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
        "pyats[full]==23.10" \
        junos-eznc \
        pyshark

# Create a non-root user
RUN useradd -ms /bin/bash neteng

# Add the non-root user to the sudo group
RUN usermod -aG sudo neteng

# Create the sudoers.d directory and allow passwordless sudo for the non-root user
RUN mkdir -p /etc/sudoers.d && \
    echo 'neteng ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/neteng

# Set the working directory to /app
WORKDIR /app

# Switch to the non-root user
USER neteng

# Define environment variable
ENV NAME World

# Command to run on container start
CMD ["bash"]

