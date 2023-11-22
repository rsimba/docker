# Use the official Alpine image as the base image
FROM alpine:latest

# Author and Maintainer information
LABEL author="Ricardo Simba" \
      maintainer="rsimba@me.com"

# Install essential system tools for monitoring and management
RUN apk --no-cache add \
        git \
        sudo \
        neovim \
        iputils \
        iproute2

# Install Python 3, pip, and development tools
RUN apk --no-cache add \
        python3 \
        py3-pip \
        gcc \
        libc-dev \
        libffi-dev \
        openssl-dev

# Upgrade pip to the latest version for Python 3
RUN pip3 install --upgrade pip

# Install Ansible
RUN pip3 install ansible

# Set up a non-root user named "neteng" and give it sudo privileges without a password prompt
RUN adduser -D -s /bin/ash neteng && \
    addgroup neteng wheel && \
    echo "neteng ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Switch to the non-root user
USER neteng

# Set the working directory to /app
WORKDIR /app

