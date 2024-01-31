# Use the official Ubuntu base image
FROM ubuntu:latest

# Install essential system tools for monitoring and management
RUN apt-get update && \
    apt-get install -y \
        git \
        sudo \
        neovim \
        iputils-ping \
        iproute2

# Install the DHCP server package
RUN apt-get install -y isc-dhcp-server

# Copy the DHCP server configuration file
COPY dhcpd.conf /etc/dhcp/dhcpd.conf

# Set up a non-root user named "neteng" and give it sudo privileges without a password prompt
RUN useradd -m -s /bin/bash neteng && \
    addgroup neteng sudo && \
    echo "neteng ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Switch to the non-root user and run the DHCP server on container startup
USER neteng

CMD ["dhcpd", "-f", "-d", "--no-pid"]
