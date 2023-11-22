# Set the name of the Docker container
LABEL name="py-net-automation"

# Author and Maintainer information
LABEL author="Ricardo Simba" \
      maintainer="rsimba@me.com"

# Set the working directory to /app
WORKDIR /app

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

# Install Python libraries for network automation
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
        "pyats[full]==23.10" \
        junos-eznc \
        pyshark \
        ansible==<appropriate_version> \
        netaddr \
        pynetbox \
        ntc-templates \
        textfsm \
        ciscoconfparse

# Create a non-root user for running the container
RUN useradd -ms /bin/bash neteng

# Add the non-root user to the sudo group
RUN usermod -aG sudo neteng

# Allow passwordless sudo for the non-root user
RUN echo 'neteng ALL=(ALL) NOPASSWD:ALL' > /etc/sudoers.d/neteng

# Switch to the non-root user
USER neteng

# Define environment variable
ENV NAME World

# Command to run on container start
CMD ["bash", "-c", "echo Hello $NAME"]

