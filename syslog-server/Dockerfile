# Use the official Alpine image as the base image
FROM alpine:latest

# Install syslog-ng, sudo, and create necessary directories
RUN apk update && \
    apk add --no-cache syslog-ng sudo && \
    mkdir -p /var/log/syslog-ng && \
    chown -R root:root /var/log/syslog-ng

# Install sudo
RUN apk add --no-cache sudo

# Set up a non-root user named "neteng" and give it sudo privileges without a password prompt
RUN adduser -D -s /bin/bash neteng && \
    echo "neteng ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Expose the syslog-ng port
EXPOSE 514/tcp 514/udp

# Copy the syslog-ng configuration file
COPY syslog-ng.conf /etc/syslog-ng/syslog-ng.conf

# Run syslog-ng in the foreground
CMD ["syslog-ng", "--no-caps", "--foreground", "-F"]

# Switch to the non-root user
USER neteng

# Create a volume for log storage
VOLUME ["/var/log/syslog-ng"]

