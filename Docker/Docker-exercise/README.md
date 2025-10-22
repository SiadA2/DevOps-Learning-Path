# Deploying a Visit Tracker using Flask, Redis and Docker-compose 

<div>
    <img src="./Images/Screenshot 2025-10-22 172338.png" alt="Diagram" width="600"/>  <img src="./Images/Screenshot 2025-10-22 172400.png" alt="Diagram" width="600"/>
</div>

This is a flask web app scripted using python and containerised using Docker. 

 ## Overview

 - App scripted with python
 - Containerised using Docker 
 - Redis for storing visit count
 - Load balancing across multiple webservers
 - Frontend (HTML, CSS, JS) for a nice, user display
 - Docker-compose for spinning up all containers simultaneously with minimal setup

Read to the end to see how I've integrated these tools into my project.

## Dockerfile

<div>
    <img src="./Images/Screenshot 2025-10-22 212117.png" alt="Diagram" width="600"/>  <img src="./Images/Screenshot 2025-10-22 173809.png" alt="Diagram" width="600"/>
</div>

- Minimal base image cut the image size by over 50%
- 'ENTRYPOINT' parameter locks the startup command in place, preventing override 

## Application Data

- Data stored in a Redis database 
- Docker Volumes configured in docker-compose for persistent storage 

## Load Balancing

- NGINX Proxy configured to load balance traffic across multiple load balancers


## Local App setup 

Copy the contents of this repo into your local machine. Then run:

```bash |  
docker-compose up --build 
```