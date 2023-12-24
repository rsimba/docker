# Docker Containers

This is a repository containing Dockerfiles for various Network Service and Automation Docker images:

1. **host**: An Ubuntu based container image with various network tools and utilities for monitoring and troubleshooting.
2. **automation**: An Ubuntu based container image with various Python and essential network automation libraries, including Nornir, Paramiko, Netmiko, and others.
3. **ansible**: An Ansible container image based on Alpine Linux.
4. **cisco-pyats**: Ubuntu based docker image with Cisco PyATS framework and its dependent libraries.
5. **juniper-pyez**: Ubuntu based Docker image with Juniper PyEZ library.
6. **file-server**: Alpine based Docker image with ftp, tftp, and sftp.
7. **nac-server**: Ubuntu based Docker image with RADIUS and TACACS+.
8. **syslog-server**: Alpine based Docker image with Syslog-ng.

# Usage

You can build and use the containers with Dockers. You can also leverage Containerlab.

## Docker

1. **Clone and build the Docker image:**
```
git clone <repository_url>
cd <repository_directory>
docker build -t <image_name>:<tag> .
```
Docker will look for the **Dockerfile** file in the local directory and automatically download (pull) the latest base image (Ubuntu) version from Docker Hub and create a new container instance based on the **Dockerfile** instructions and the specified image.

2. **Run the docker container**

Once the image is built, you can run a Docker container from the image:
```
docker run -it --name <container_name> <image_name>:<tag>
```
3. **Access the docker container**

After running the container, you'll be inside the container's command line. You can interact with it just like a regular terminal. If the Dockerfile includes setting up a non-root user, you might be logged in as that user. If not, you might be the root user.
```
docker exec -it <container_name> /bin/bash
```
The `-it` option allows you to interact with the container's shell.

4. **Cleanup**

To stop and remove the running container:
```
docker stop <container_name>
docker rm <container_name>
```
To remove the Docker image:
```
docker rmi <image_name>:<tag>
```
**Note**. Remember to replace `<image_name>` and `<tag>` with the actual name and/or tag of the Docker image.

## Containerlab
You can reference your Docker images in ContainerLab's configuration file. More information will be provided soon.

Happy labing!

