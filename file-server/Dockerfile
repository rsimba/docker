# Use the official Alpine image as the base image
FROM alpine:latest

# Author and Maintainer information
LABEL author="Ricardo Simba" \
      maintainer="rsimba@me.com"

# Install necessary packages for FTP, TFTP, SFTP servers, and sudo
RUN apk update && \
    apk add --no-cache \
        vsftpd \
        tftp-hpa \
        openssh-sftp-server \
        sudo

# Set up FTP server configuration
COPY vsftpd.conf /etc/vsftpd/vsftpd.conf

# Set up a non-root user named "neteng" and give it sudo privileges without a password prompt
RUN adduser -D -s /bin/bash neteng && \
    echo "neteng ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Expose ports for FTP, TFTP, and SFTP
EXPOSE 21 69/udp 22

# Switch to the non-root user
USER neteng

# Set the working directory to /app
WORKDIR /app

