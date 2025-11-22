# Docker 

## Introduction

In this section, I'll run through the history of how applications were hosted, and how we've come to what we've got today. I'll then introduce to the concept of containerisation and it's benefits in the modern world of computing. I'll finish off by showing you how we can get hands-on with Docker, a tool used for containerisation. So grab a snack, sit back and enjoy!

## A Brief History about Applications

When applications first became a thing, they used to be hosted on webservers, inside clunky offices and datacenters. They would eat up large amounts of power and money, and take up a lot of space, a lot of it being unused/idle. At the time this was necessary, since the Operating Systems that the apps ran on depended on the underlying hardware. 

Then, in the late 1990s/2000s, we managed to find a way to abstract the Operating System from the machine's underlying hardware, shown by the release of VMWare Workstation, Microsoft Hyper-V and Oracle Virtual Box. If you haven't already guessed from these names, this technique is known as Virtualisation. In essence, Virtualisation allows us to run multiple Operating Systems across a range of different devices that have the capacity to. This process is done through what's known as a hypervisor, which is an agent that allows you to run Virtual Machines on your computer. These are of two types:

- Type 1 Hypervisors: These Hypervisors run directly on the host machine without the need for an OS
- Type 2 Hypervisors: These Hypervisors run on and thus depend on a host OS

Virtualisation offers plenty more resource efficiency as it allows us to use smaller machines/computers to run multiple applications on. It also provides plenty of isolation, meaning problems on one VM rarely affect others, however, cyber attacks such as VM escape can bypass this isolation.

Anyway, that's enough of Virtualisation. 