# Docker Containers

This is a repository containing Dockerfiles for various Docker images:

1. **host**: An Ubuntu based container image with various network tools and utilities for monitoring and troubleshooting.
2. **automation**: An Ubuntu based container image with various Python and essential network automation libraries, including Nornir, Paramiko, Netmiko, and others.
3. **ansible**: An Ansible container image based on Alpine Linux.
4. **cisco-pyats**: Ubuntu based docker image with Cisco PyATS framework and its dependent libraries.
5. **juniper-pyez**: Ubuntu based Docker image with Juniper PyEZ library.

# Usage:

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

3. Access the docker container:
```
docker exec -it host-mage /bin/bash
```
The `-it` option allows you to interact with the container's shell.

Happy coding!

