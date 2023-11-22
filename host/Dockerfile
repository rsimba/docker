# Set the name of the Docker container
LABEL name="net-toolbox"

# Author and Maintainer information
LABEL author="Ricardo Simba" \
      maintainer="rsimba@me.com"

# Use the official Ubuntu image as the base image
FROM ubuntu:latest

# Set noninteractive mode to prevent timezone prompt during installation
ENV DEBIAN_FRONTEND=noninteractive

# Group 1: Essential Network Utilities
RUN apt-get update && \
    apt-get install -y \
        iputils-ping \
        dnsutils \
        curl \
        wget \
        iproute2 \
        openssh-client \
        # Additional utilities for network analysis and troubleshooting
        nmap \
        tcpdump \
        iperf \
        traceroute \
        mtr \
        iftop \
        arping \
        ngrep \
        nload \
        telnet \
        tracepath \
        ftp \
        tftp \
        sftp \
        # tshark (Wireshark command-line tool)
        tshark && \
    # Clean up
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Group 2: Text Editing and Version Control
RUN apt-get update && \
    apt-get install -y \
        # Neovim for text editing
        neovim \
        # Git for version control
        git && \
    # Clean up
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Group 3: System Utilities and Documentation
RUN apt-get update && \
    apt-get install -y \
        # sudo for privilege management
        sudo \
        # Man pages and apropos for documentation
        man \
        manpages \
        man-db \
        apropos && \
    # Clean up
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set up a non-root user named "neteng" and give it sudo privileges without a password prompt
RUN useradd -ms /bin/bash neteng && \
    usermod -aG sudo neteng && \
    echo "neteng ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Switch to the non-root user
USER neteng

# Set the working directory to /app
WORKDIR /app

