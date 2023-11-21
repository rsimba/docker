# Network Automation and Troubleshooting Docker Image

This Docker image is designed for network automation, troubleshooting, and programmability. It includes a collection of essential networking tools, system monitoring utilities, and popular Python libraries for network automation.

## Tools Included:

1. **Networking Analysis Tools:**
   - nmap
   - tcpdump
   - iperf
   - traceroute
   - DNS utilities (dnsutils)
   - mtr
   - iftop

2. **Network Troubleshooting Tools:**
   - arping
   - ngrep
   - nload
   - telnet
   - tracepath
   - ftp
   - tftp
   - sftp

3. **System Monitoring and Management Tools:**
   - git

4. **Python Libraries for Network Automation:**
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
   - PyATS (Cisco's Automated Test System) - Version 23.10
   - Junos-EZNC (Juniper's Library for Junos automation)
   - pyShark
   - netaddr
   - pynetbox
   - ntc-Templates
   - textfsm
   - ciscoconfparse

## Usage:

1. **Build Docker Image:**
```
git clone https://github.com/rsimba/docker
cd docker
docker build -t network-automation-image .
```
2. Run Docker Container:
```
docker run -it --rm network-automation-image
```
This will start a container with a Bash shell, providing you access to the installed tools and libraries.

Happy coding!
