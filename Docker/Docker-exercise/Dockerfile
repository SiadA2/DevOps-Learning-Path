# Define base image
FROM python:3.8-alpine

# Specify container directory in which subsequent commands will be run in
WORKDIR /web

# Copy files from the host's current directory to the container's /web directory
COPY . .

# Install dependencies
RUN pip install flask redis

# Open the following port on the container 
EXPOSE 2000

# Run the following command on startup
ENTRYPOINT ["python", "count.py"]