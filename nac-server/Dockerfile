# Use the official Ubuntu image as the base image
FROM ubuntu:latest

# Author and Maintainer information
LABEL author="Ricardo Simba" \
      maintainer="rsimba@me.com"

# Install necessary packages for TACACS+, RADIUS, and sudo
RUN apt-get update && \
    apt-get install -y \
        tacacs++ \
        freeradius \
        freeradius-mysql \
        freeradius-utils \
        sudo && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set up a non-root user named "neteng" and give it sudo privileges without a password prompt
RUN useradd -ms /bin/bash neteng && \
    echo "neteng ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Expose ports for TACACS+ and RADIUS
EXPOSE 49 1812/udp 1813/udp

# Copy the TACACS+ configuration file
COPY tac_plus.conf /etc/tac_plus.conf

# Copy the RADIUS configuration files
COPY radiusd.conf /etc/freeradius/radiusd.conf
COPY clients.conf /etc/freeradius/clients.conf
COPY users /etc/freeradius/users

# Switch to the non-root user
USER neteng

# Set the working directory to /app
WORKDIR /app

