
# Use the official Alpine Linux base image
FROM alpine:latest

# Install essential system tools for monitoring and management
RUN apk --no-cache add \
        git \
        sudo \
        neovim \
        iputils \
        iproute2

# Install the DHCP server package
RUN apk --no-cache add isc-dhcp-server

# Copy the DHCP server configuration file
COPY dhcpd.conf /etc/dhcp/dhcpd.conf

# Set up a non-root user named "neteng" and give it sudo privileges without a password prompt
RUN adduser -D -s /bin/ash neteng && \
    addgroup neteng wheel && \
    echo "neteng ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Switch to the non-root user and run the DHCP server on container startup
USER neteng
CMD ["dhcpd", "-f", "-d", "--no-pid"]
