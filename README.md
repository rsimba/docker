# Docker Container Repository

This repository contains Dockerfiles for creating different Docker images:

1. **host**: An Ubuntu based container image with various network tools and utilities for monitoring and troubleshooting.
2. **automation**: An Ubuntu based container image equipped with Python and essential network automation libraries.
3. **ansible**: An Ansible container image based on Alpine Linux.

## Host

This Dockerfile builds a container image based on Ubuntu that includes a collection of network tools and utilities for system monitoring and troubleshooting.

### Included Tools:

- Git
- iputils-ping
- dnsutils
- curl
- wget
- iproute2
- openssh-client
- nmap
- tcpdump
- iperf
- traceroute
- mtr
- iftop
- arping
- ngrep
- nload
- telnet
- ftp
- tftp
- tshark

## Python Network Automation Libraries 

This Dockerfile builds a container image based on Ubuntu that includes a collection of Python Network Libraries for Network Programmability and Automation.

### Included Tools:
- netmiko
- napalm
- ncclient
- paramiko
- nornir
- jinja2
- requests
- scapy
- passlib
- pyYAML
- lxml
- PyATS
- Junos-eznc
- PyShark
- Netaddr
- Pynetbox
- NTC Templates
- TextFSM

## Ansible

This Dockerfile builds a container image based on Alpine Linux that includes Ansible for Network and Automation.

## Usage:

1. **Build docker image:**
```
git clone https://github.com/rsimba/docker
cd docker/host
docker build -t host-image .
```
Docker will look for the **Dockerfile** file in the local directory and automatically download (pull) the latest base image (Ubuntu) version from Docker Hub and create a new container instance based on the **Dockerfile** instructions and the specified image.

2. Run the docker container:
```
docker run -it --rm host-image
```
This will start a container with a Bash shell, providing you access to the installed tools and libraries. The `--rm` option ensures that the container is automatically removed when the user exits the container, preventing it from lingering on the system.

Happy coding!

