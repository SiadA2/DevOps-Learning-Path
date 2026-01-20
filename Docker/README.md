# Docker 

## Introduction

In this section, I'll run through the history of how applications were hosted, and how we've come to what we've got today. I'll then introduce to the concept of containerisation and it's benefits in the modern world of computing. I'll finish off by showing you how we can get hands-on with Docker, a tool used for containerisation. So grab a snack, sit back and enjoy!

## A Brief History about Applications...

When applications first became a thing, they used to be hosted on webservers, inside clunky offices and datacenters. They would eat up large amounts of power and money, and take up a lot of space, a lot of it being unused/idle. At the time this was necessary, since the Operating Systems that the apps ran on depended on the underlying hardware. 

Then, in the late 1990s/2000s, we managed to find a way to abstract the Operating System from the machine's underlying hardware, shown by the release of VMWare Workstation, Microsoft Hyper-V and Oracle Virtual Box. If you haven't already guessed from these names, this technique is known as Virtualisation. In essence, Virtualisation allows us to run multiple Operating Systems across a range of different devices that have the capacity to. This process is done through what's known as a hypervisor, which is an agent that allows you to run Virtual Machines on your computer. These are of two types:

- Type 1 Hypervisors: These Hypervisors run directly on the host machine without the need for an OS
- Type 2 Hypervisors: These Hypervisors run on and thus depend on a host OS

Virtualisation offers plenty more resource efficiency as it allows us to use smaller machines/computers to run multiple applications on. It also provides plenty of isolation, meaning problems on one VM rarely affect others, however, cyber attacks such as VM escape can bypass this isolation.

Anyway, that's enough of Virtualisation. 

As years went by, engineers across the world began to think of different ways of making better use of resources. At it's current iteration, each application needed its own OS to run which would then use up resources from the host machine, such as CPU, RAM and storage space. Surely there has to be a more efficient way of running our applications. 

This is how containerisation was born.

## What is Containerisation?

Rather than download & install all of the dependencies and run the application on one single OS, engineers realised that they can create snapshots of application, which are relatively small, and distribute them across any machine. These snapshots could be run and stopped and stopped at will as what is known as containers. Containers contain just about enough of what is needed for an app to run, from the dependencies to the runtime environment. Nothing more, nothing less, making them the most resource-efficient way of running apps in modern-times.

Containerisation also offers much of the same isolation as VMs, again meaning that problems in one container rarely affect the rest. However, the fact that containers are so small (only a couple MB) means that it can run on any machine. As a result, containers share the host OS, rather than adding the additional overhead of extra Guest OSs, which can eat up resources.

## What is Docker? 

Docker is an well-known containerisation tool, created by Linux. It's made up of three components:

- Containers, which are minimal and only contain what's needed for the app to run
- Docker images, which are snapshots of the containers
- Dockerfiles, which are files containing the specifications of the images

Docker containers rely on what is known as a Docker daemon, which you can think of as an agent that is installed on your machine for the purpose of running containers. Without this, we cannot run containers, or build images. Let see how we can install that. 

## Installing Docker Desktop

Documentation on installing Docker Desktop for Windows: https://docs.docker.com/desktop/setup/install/windows-install/

Documentation on installing Docker Desktop for Linux: https://docs.docker.com/desktop/setup/install/linux/

Documentation on installing Docker Desktop for Mac: https://docs.docker.com/desktop/setup/install/mac-install/

## Running our first Docker Container

Once we've installed Docker desktop, we can verify the installation by typing in our terminal:

``` bash
docker --version
```

Now that we're sure that we have Docker Desktop installed on our machine, we can now go ahead and run our first container. It's actually a lot more simple than it sounds. Just type in:

``` bash
docker run -p 80:80 nginx
```
and go to ```http://localhost:80```. You should see nginx running on the browser. Perfect! You've now run your first Docker container! Press 'Ctrl + C' and let's now go through some other commands we can use with Docker.

## Basic Docker Commands

- ```docker build``` creates a Docker image from our Dockerfile
- ```docker run``` runs our image as a container
- ```docker images/docker image ls``` lists all Docker images
- ```docker ps``` shows running processes (add the '-a' flag to show all processes)
- ```docker stop <CONTAINER_ID>``` stops our container
- ```docker logs <CONTAINER_ID>``` shows all logs on our container

Have a go at using these commands. Don't be afraid to break things or run into errors! You'll learn more commands and arguments as you go along!

## Writing a Dockerfile

As previously mentioned, a Dockerfile is a file that contains the specifications of an image. Although there are several possible commands you could you use to build one, it tends to be built upon 5 core ones:

- ```FROM``` specifies the base image that we'll use for our Docker image. It makes up the foundation of everything. 
- ```WORKDIR``` specifies our working directory in our container. It's also the directory where all subsequent commands will be run in.
- ```COPY``` specifies what files to copy from the source to the destination 
- ```RUN``` specifies what commands to run in the container itself. For example, installing dependencies, creating users, changing permissions.
- ```EXPOSE``` specifies the port to be opened on the container.
- ```CMD``` is used to determine which command the container runs on startup.

Like I said, there are others too. Visit the [Official Documentation](https://docs.docker.com/build/concepts/dockerfile/), to see what else you can include in your Dockerfile.




